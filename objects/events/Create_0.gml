queue = ds_queue_create();
step_count = 0; //number of steps since player entered field
hold = true; //flag for adding more events to the queue or letting all queued events play out
new_event = false; //flag for adding a new event to the queue
ev = noone; //newest event in focus