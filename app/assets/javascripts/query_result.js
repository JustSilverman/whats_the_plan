var queryResult = {
  activities: [],

  init: function() {
    this.$body = $('.search-results');
  },

  load: function(data) {
    this.activities = [];
    for (i in data) {
      this.activities.push(new Activity(data[i], i));
    }
    this.render();
    this.activityListener();
  },

  remove: function(id) {
    var activity = this.find(id);
    this.activities.splice(this.activities.indexOf(activity), 1);
  },

  find: function(id) {
    for (i in this.activities) {
      if (this.activities[i].id == id) return this.activities[i];
    }
  },

  render: function() {
    $('.search-results .activity-block').remove();
    for (i in this.activities) {
      this.$body.append(this.activities[i].renderSearch());
    }
  },

  activityListener: function() {
    var self = this;
    $('.add-to-plan').on('click', function(e){
      e.preventDefault();
      var id = $(this).parents('.activity-block').data('id')
      var activity = self.find(id);
      plan.add(activity, plan.activities.length + 1);

      self.remove(id);
      $(this).parents('.activity-block').remove();
    });
  },
};
