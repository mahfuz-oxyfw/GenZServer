const jobList = [
    {
        id: 1,
        name: 'reporter', // name of job
        label: 'Reporter',
        pay: '$150',
        description: `
            <strong>Reporters</strong> gather and analyze information, conduct interviews, and write news stories. 
            Topics include politics, business, sports, and entertainment. Strong communication skills are essential.
        `,
        image: 'imgs/reporter.png',
        tags: ['Media', 'Communication', 'Writing'],
        recommended: true
    },
    {
        id: 2,
        name: 'tow', // name of job
        label: 'Towing',
        pay: '$150',
        description: `
            <strong>Towing</strong> manage agricultural operations including crops and livestock. 
            Responsibilities include planting, cultivating, and harvesting. Knowledge of modern farming techniques is beneficial.
        `,
        image: 'imgs/tow.png',
        tags: ['Agriculture', 'Livestock', 'Crops'],
        recommended: false
    },
    // {
    //     id: 3,
    //     name: 'garbage', // name of job
    //     label: 'Garbage Collector',
    //     pay: '$200',
    //     description: `
    //         <strong>Garbage Collectors</strong> collect and dispose of waste materials. 
    //         Ensure timely and efficient waste collection. Physical fitness and attention to safety regulations are important.
    //     `,
    //     image: 'imgs/garbage.png',
    //     tags: ['Waste Management', 'Sanitation', 'Recycling'],
    //     recommended: false
    // },
    {
        id: 4,
        name: 'bus', // name of job
        label: 'BUS DRIVER',
        pay: '$100',
        description: `
            <strong>Bus</strong> track and hunt wild animals for sport, food, and population control. 
            Knowledge of wildlife and tracking techniques is essential. Adherence to hunting regulations is crucial.
        `,
        image: 'imgs/bus.png',
        tags: ['Wildlife', 'Tracking', 'Outdoors'],
        recommended: false
    },
    {
        id: 5,
        name: 'hotdog', // name of job
        label: 'Hotdog',
        pay: '$60',
        description: `
            <strong>Hotdog</strong> maintain public order, enforce laws, and investigate crimes. 
            Strong physical fitness, critical thinking, and communication skills are required.
        `,
        image: 'imgs/hotdog.png',
        tags: ['Law Enforcement', 'Safety', 'Investigation'],
        recommended: false
    }
    // {
    //     id: 6,
    //     name: 'ambulance', // name of job
    //     label: 'Paramedic',
    //     pay: '$200',
    //     description: `
    //         <strong>Paramedics</strong> provide emergency medical care and transport for critically ill and injured patients. 
    //         Perform medical procedures and collaborate with other emergency services.
    //     `,
    //     image: 'imgs/paramedic.png',
    //     tags: ['Emergency', 'Healthcare', 'Medical'],
    //     recommended: false
    // },
    // {
    //     id: 7,
    //     name: 'trucker', // name of job
    //     label: 'Trucker',
    //     pay: '$150',
    //     description: `
    //         <strong>Truckers</strong> transport goods over long distances, ensuring timely and safe delivery. 
    //         Operate and maintain large vehicles and comply with traffic laws.
    //     `,
    //     image: 'imgs/trucker.png',
    //     tags: ['Transportation', 'Logistics', 'Delivery'],
    //     recommended: false
    // },
    // {
    //     id: 8,
    //     name: 'mechanic', // name of job
    //     label: 'Mechanic',
    //     pay: '$175',
    //     description: `
    //         <strong>Mechanics</strong> inspect, maintain, and repair vehicles and machinery. 
    //         Diagnose issues, perform routine maintenance, and replace worn parts.
    //     `,
    //     image: 'imgs/mechanic.png',
    //     tags: ['Maintenance', 'Repair', 'Technical'],
    //     recommended: false
    // }
];

const texts = {
    jobCenterTitle: 'Job Center',
    closeButton: '✖',
    applyButton: 'Sign Up',
    applicationSubmittedTitle: 'Application Submitted!',
    applicationSubmittedMessage: (jobName, jobPay) => `You have signed for the position of ${jobName} with a pay of ${jobPay}$.`
};
