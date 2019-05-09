Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 999A2184BD
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 07:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=oenT0toR6eRI4UkRMIBxG8CQyryuxEMdbzoEfq3Adf0=; b=Yq9uWAL830vW3A
	jp9z4n8DMPGkqJuXkhPEpBtfeRaMeC1cWBeIfBqTh8K8mJkGu86Bx9hpUUNoY5T296Nf8o6kIC7nX
	wIxiJO+sVZbSPXWzMIZb7SjEkzk7VaJO0vfBR5cEdP7+qQOTj+kMh8xBFki349cIVHP4ni9twwTur
	lI9bXVVcsTgYZOhfl/bhulA0qdx2aGTR0/Dh5+/hLklOIfkQwk59/MxL8cTWhL/JAaFb08G5PCR2y
	rxxa8GPMUZpw7Om701li31VpflHCE52hh0iUJr6Q3bOMwZeFQqzGVC41k6++2IFmRh2VcjNqkbTkx
	Mje80j4EYV3klq6JYNkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hObMp-0006Fg-00; Thu, 09 May 2019 05:13:15 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hObMj-0006FG-IR
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 05:13:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557378790; x=1588914790;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=HEGx3+K6bC0J15XL82IIWb3Sef9iETo2UNzZ83CBzBs=;
 b=DW6eHTYOsLiKGRljj0AXaflYoErI2ylWPYWNjrQ83dcUU5uLNSjvef36
 XoXHcUlKdH47l4eXq7vke8mO035xKBy05v8+JlIfkHeSUgAO8A/VAftxc
 4oekrQodwPkeJJq1QhPHSEk6r7L1eM9QVj12i4Oy6tmBppFG3st/CCoPi
 VHI+pUbKG1IRFdY9EbJc0y/THSiSdkOcT9VHH1NMQ30Du3o+SqMse9EyM
 73phmfnvgYX7ScIcSCVGoANhNRWK/78RrRX5wienCJ74gUmkjEJD8Pb/u
 kU0KEtrH/F1jdFwxiRSGFwmy58XJi9F2BMTRh3wk9v1/JhPo0/J6NRtYL w==;
X-IronPort-AV: E=Sophos;i="5.60,448,1549900800"; d="scan'208";a="107860257"
Received: from mail-dm3nam03lp2054.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.54])
 by ob1.hgst.iphmx.com with ESMTP; 09 May 2019 13:13:06 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ROhpNtuQJ35w3BqzJKl2XWw+vDj0eF6NgJ1sS/0r43s=;
 b=LXdFe7EloZjyyFRJQeNvclko9IXrJ1w6yZ04YzgZPOZ7+K+inoHADpDZgJ3KQD6zDV/EYxbKB3UKY/6v2SuTYJRj2MCa9alANN5wSiWqa8S/z2gOQRab/b7WZ8BBO494ks0t0ZYQJH9nsOitYR4yjQ1J1aiQUwdACQZ1ykcZB8A=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB5392.namprd04.prod.outlook.com (20.178.7.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Thu, 9 May 2019 05:13:05 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Thu, 9 May 2019
 05:13:04 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@lst.de>, "hare@suse.de" <hare@suse.de>
Subject: Re: [PATCH, RFC 1/2] nvme: change locking for the per-subsystem
 controller list
Thread-Topic: [PATCH, RFC 1/2] nvme: change locking for the per-subsystem
 controller list
Thread-Index: AQHVBXN5Usa1+Ajv5Eyxi9XCWjICAg==
Date: Thu, 9 May 2019 05:13:04 +0000
Message-ID: <SN6PR04MB45271E40F4CB44DD5F3A8B2386330@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190508075508.28552-1-hch@lst.de>
 <SN6PR04MB452790A4249949BA3C43DB4786320@SN6PR04MB4527.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:eee9:536e:c194:4e76]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63e72a2f-ee05-4f3c-7ae0-08d6d43d044a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5392; 
x-ms-traffictypediagnostic: SN6PR04MB5392:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB539238293B1E53315CCC685086330@SN6PR04MB5392.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(39860400002)(346002)(376002)(366004)(189003)(199004)(25786009)(5660300002)(14444005)(53546011)(6506007)(256004)(102836004)(33656002)(478600001)(72206003)(52536014)(186003)(14454004)(8936002)(81166006)(81156014)(229853002)(2501003)(8676002)(6436002)(68736007)(76176011)(99286004)(7696005)(53936002)(2906002)(4326008)(6246003)(110136005)(74316002)(7736002)(6116002)(305945005)(316002)(55016002)(9686003)(446003)(71200400001)(71190400001)(91956017)(76116006)(86362001)(46003)(66946007)(486006)(73956011)(476003)(64756008)(66556008)(66446008)(66476007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5392;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wGqDfR6banmcA6vADgfA7WUu+xc9XbSuQXU8jPBclLcSHXFVjV3BymMdF9Rdqj1p4quyRxewzqyA1ApaJRgLOrMF5VJqiS3fKqTFyWgeRqYgAmDYSqvPxPkqWwymTlK0D3H0ozX5txmqHl9ISU7Z7K8l0m7Bw6/4MUA1scGxbm6C0KXeodhBsBZlws3huPPI7QaCwEtqkgIRsEc4s7+pURuEkwecSCERrseuJV1thgA3EoBLYD5Djv0T4daIKrRs03Qw7YyaUIgBtXcnyC5RvPN7dH1V9k4T/wQKVb5+cHoXO8p4LlYY08Mk5FKNgpYFYNuATu6yC+nXeR2I7ewg9QaF6jOwdUcydqDhhPPUIcuXFxJL5F38IhjxXSbpvnGv5d03YCN4haWWhtoTCygBiXu7/Lyc3S3n/1vww5N6K74=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63e72a2f-ee05-4f3c-7ae0-08d6d43d044a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 05:13:04.7996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5392
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_221309_726098_38917706 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Please ignore my earlier comment, I can see it is already been done.

On 5/8/19 3:42 PM, Chaitanya Kulkarni wrote:
> On 05/08/2019 12:55 AM, Christoph Hellwig wrote:
>> Life becomes a lot simpler if we just use the global
>> nvme_subsystems_lock to protect this list.  Given that it is only
>> accessed during controller probing and removal that isn't a scalability
>> problem either.
>>
>> Signed-off-by: Christoph Hellwig <hch@lst.de>
>> ---
>>    drivers/nvme/host/core.c | 30 ++++++++++++------------------
>>    1 file changed, 12 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>> index eebaeadaa800..4f4ffcce7416 100644
>> --- a/drivers/nvme/host/core.c
>> +++ b/drivers/nvme/host/core.c
>> @@ -2346,13 +2346,11 @@ static int nvme_active_ctrls(struct nvme_subsystem *subsys)
>>    	int count = 0;
>>    	struct nvme_ctrl *ctrl;
>>
>> -	mutex_lock(&subsys->lock);
>>    	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
>>    		if (ctrl->state != NVME_CTRL_DELETING &&
>>    		    ctrl->state != NVME_CTRL_DEAD)
>>    			count++;
>>    	}
>> -	mutex_unlock(&subsys->lock);
> Please correct me if I'm wrong.
> 
> nvme_free_ctrl() seems to be removing the ctrl from subsys->ctrls which
> gets added in the nvme_init_subsystem() and it is using subsys->lock.
> 
> In order to make above change work across nvme_init_subsytem() and
> nvme_free_ctrl() and it is not in the hot path, do we need to use
> nvme_subsystems_lock in nvme_free_ctrl() also ?
>>
>>    	return count;
>>    }
>> @@ -2394,6 +2392,9 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>>    	mutex_lock(&nvme_subsystems_lock);
>>    	found = __nvme_find_get_subsystem(subsys->subnqn);
>>    	if (found) {
>> +		__nvme_release_subsystem(subsys);
>> +		subsys = found;
>> +
>>    		/*
>>    		 * Verify that the subsystem actually supports multiple
>>    		 * controllers, else bail out.
>> @@ -2402,14 +2403,10 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>>    		    nvme_active_ctrls(found) && !(id->cmic & (1 << 1))) {
>>    			dev_err(ctrl->device,
>>    				"ignoring ctrl due to duplicate subnqn (%s).\n",
>> -				found->subnqn);
>> -			nvme_put_subsystem(found);
>> +				subsys->subnqn);
>>    			ret = -EINVAL;
>> -			goto out_unlock;
>> +			goto out_put_subsystem;
>>    		}
>> -
>> -		__nvme_release_subsystem(subsys);
>> -		subsys = found;
>>    	} else {
>>    		ret = device_add(&subsys->dev);
>>    		if (ret) {
>> @@ -2421,23 +2418,20 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>>    		list_add_tail(&subsys->entry, &nvme_subsystems);
>>    	}
>>
>> -	ctrl->subsys = subsys;
>> -	mutex_unlock(&nvme_subsystems_lock);
>> -
>>    	if (sysfs_create_link(&subsys->dev.kobj, &ctrl->device->kobj,
>>    			dev_name(ctrl->device))) {
>>    		dev_err(ctrl->device,
>>    			"failed to create sysfs link from subsystem.\n");
>> -		/* the transport driver will eventually put the subsystem */
>> -		return -EINVAL;
>> +		goto out_put_subsystem;
>>    	}
>>
>> -	mutex_lock(&subsys->lock);
>> +	ctrl->subsys = subsys;
>>    	list_add_tail(&ctrl->subsys_entry, &subsys->ctrls);
>> -	mutex_unlock(&subsys->lock);
>> -
>> +	mutex_unlock(&nvme_subsystems_lock);
>>    	return 0;
>>
>> +out_put_subsystem:
>> +	nvme_put_subsystem(subsys);
>>    out_unlock:
>>    	mutex_unlock(&nvme_subsystems_lock);
>>    	put_device(&subsys->dev);
>> @@ -3695,10 +3689,10 @@ static void nvme_free_ctrl(struct device *dev)
>>    	__free_page(ctrl->discard_page);
>>
>>    	if (subsys) {
>> -		mutex_lock(&subsys->lock);
>> +		mutex_lock(&nvme_subsystems_lock);
>>    		list_del(&ctrl->subsys_entry);
>> -		mutex_unlock(&subsys->lock);
>>    		sysfs_remove_link(&subsys->dev.kobj, dev_name(ctrl->device));
>> +		mutex_unlock(&nvme_subsystems_lock);
>>    	}
>>
>>    	ctrl->ops->free_ctrl(ctrl);
>>
> 
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
