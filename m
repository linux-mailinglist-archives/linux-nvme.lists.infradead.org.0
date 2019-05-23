Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B449E27B54
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 13:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T+HEol2usePjdAm/TYMX3ZVq1S6qQ9Ft3YtPD3aIHFM=; b=EFWCMqyE+XYIJ+MzD52wo+utx
	q3WlfBXUT01ABYpO8DD9fwFjdODSSNv8J04E2slsn8O2BWP94pQC4wJls3Vx0Z2eJRoJveRB+bfxm
	XYC5TK32q5yrkjP5HPwhMngzzar5/wkUXC7S2l6fEvyJCDefduqszE/WhbjoMlz6O8ZsGiztzS1+q
	TlVgMYcKMi/ueNYXyOkii9ne57fVAU1jNBOOWlOVoUt9lrCetrj2KLE9DYSRbJToaN82Vsh9FnSJu
	MXnMlI1d31Fkm6R/PSsGZFPZkaFY3Loc42XU/2rgucLXr6nYLiHC27mvAhhO3VKWOtVLrX/o7FFSy
	q6lNIrqZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTlXT-0007Cy-6p; Thu, 23 May 2019 11:05:35 +0000
Received: from mail-eopbgr50040.outbound.protection.outlook.com ([40.107.5.40]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTlXP-0007CM-Ax
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 11:05:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZvljawmzFw9r1y4PSEplFAeKFcSF4yC08ZOAfqoxqkM=;
 b=LM0cq4g/xCyyTPuwGp17DESIgu9xpISyjy8r0bW5VClub370tXEPhCBSw0l6nWoY8Vd5UaMg1jT9kKQdfXXwjHCqhuaeWcXSaBE5C8S4M6PEmYZKMkKShMpwH58PBey20TKiqrcRjM3BBxgzr0NDwWd30x3otd0m8qLeOMj2iJA=
Received: from AM4PR0501CA0059.eurprd05.prod.outlook.com
 (2603:10a6:200:68::27) by VI1PR0502MB4062.eurprd05.prod.outlook.com
 (2603:10a6:803:25::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.17; Thu, 23 May
 2019 11:05:27 +0000
Received: from VE1EUR03FT027.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::206) by AM4PR0501CA0059.outlook.office365.com
 (2603:10a6:200:68::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Thu, 23 May 2019 11:05:27 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; grimberg.me; dkim=none (message not signed)
 header.d=none;grimberg.me; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT027.mail.protection.outlook.com (10.152.18.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Thu, 23 May 2019 11:05:26 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 23 May 2019 14:05:25
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 23 May 2019 14:05:25 +0300
Received: from [172.16.0.248] (172.16.0.248) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 23 May 2019 14:05:23
 +0300
Subject: Re: [PATCH 1/1] nvme-rdma: Add association between ctrl and transport
 dev
To: Christoph Hellwig <hch@lst.de>
References: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
 <20190523102236.GC15492@lst.de>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <264c1ab2-a097-3384-381f-2b8c56c4442c@mellanox.com>
Date: Thu, 23 May 2019 14:05:23 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190523102236.GC15492@lst.de>
Content-Language: en-US
X-Originating-IP: [172.16.0.248]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(396003)(136003)(346002)(2980300002)(199004)(189003)(8676002)(8936002)(81156014)(81166006)(4326008)(336012)(70586007)(230700001)(70206006)(16576012)(446003)(11346002)(2616005)(476003)(316002)(107886003)(356004)(6246003)(126002)(486006)(50466002)(65806001)(65956001)(47776003)(478600001)(305945005)(16526019)(7736002)(186003)(229853002)(31686004)(77096007)(86362001)(64126003)(31696002)(26005)(6116002)(3846002)(5660300002)(67846002)(58126008)(106002)(2906002)(65826007)(36756003)(2486003)(23676004)(54906003)(76176011)(53546011)(6916009)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0502MB4062; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9d88cae9-b045-432b-a081-08d6df6e8fa2
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:VI1PR0502MB4062; 
X-MS-TrafficTypeDiagnostic: VI1PR0502MB4062:
X-Microsoft-Antispam-PRVS: <VI1PR0502MB40620BC6B836545ADCFD5AF6B6010@VI1PR0502MB4062.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:339;
X-Forefront-PRVS: 00462943DE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: ClvaiQecwReIGN4Tg7lEVEqgkN/XeQgOM2aAhp8gC3/Zo/ny1rJv8dc/pbpXDMdt+ScavRpQsMUAloRkeIjDYBNXvI7qFeeMgsxT9D0mKqTutQ3tr0jiqJm6EGv+STzEDBlDNO3sXffHVIITEUACSCm68gwl0q1G/dI+ZL71Kbs7uiN9rjKYIZ9sWV4wCuPsuy6IlMye5AsajPeyMQUJEhFcV1C5e3NhbE+j++AdmcPmrOroAvZbR1rQDYqpXTuj+N0FkKnbZZUHsp/zR3aiWSjxcUgSAFVGcCe2rgGBVFkAck+8pR2xnsixY0d3F/WPzYg2gleyjpiQkB4+TAeqyEChqVIgc4RHj3IqyIN3NwxyybPAOuOSw05r0LnLgwEJskV/KgruZbKn26t7L8/81zRwqhdwcTd0cno4OWYWfYA=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2019 11:05:26.5017 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d88cae9-b045-432b-a081-08d6df6e8fa2
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB4062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_040531_447497_EF87A976 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: israelr@mellanox.com, sagi@grimberg.me, linux-nvme@lists.infradead.org,
 shlomin@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/23/2019 1:22 PM, Christoph Hellwig wrote:
>> +static void nvme_rdma_ctrl_dev_put(struct nvme_rdma_ctrl *ctrl,
>> +				   struct nvme_rdma_device *dev)
>> +{
>> +	ctrl->device = 	NULL;
> double whitespace here.
thanks.
>
>> +	kref_put(&dev->ref, nvme_rdma_free_dev);
>> +}
>> +
>> +static void nvme_rdma_ctrl_dev_get(struct nvme_rdma_ctrl *ctrl,
>> +				   struct nvme_rdma_device *dev)
>> +{
>> +	kref_get(&dev->ref);
>> +	ctrl->device = dev;
> Why aren't these using nvme_rdma_dev_put / nvme_rdma_dev_get?

Since we change the ctrl->device pointer here.

Do you prefer doing it without helper ?

>
>>   static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
>>   		bool remove)
>>   {
>> +	struct nvme_rdma_device *ndev = ctrl->device;
>> +
>>   	if (remove) {
>>   		blk_cleanup_queue(ctrl->ctrl.admin_q);
>>   		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
>> +		/* ctrl releases refcount on device */
>> +		nvme_rdma_ctrl_dev_put(ctrl, ctrl->device);
>>   	}
>>   	if (ctrl->async_event_sqe.data) {
>> -		nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
>> +		nvme_rdma_free_qe(ndev->dev, &ctrl->async_event_sqe,
> What guarantees ndev is not freed here?

The admin queue is the last reference for the device (will be freed 
during nvme_rdma_free_queue(&ctrl->queues[0]);)



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
