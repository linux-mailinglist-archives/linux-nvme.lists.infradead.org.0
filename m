Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1424935273
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 00:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5NU51qG5s7oQmRz+wKJgmxlKee9umaGxMTIcyUzHAKU=; b=mfkKM0sSLMH3EMZ2ewZc110IL
	nItaPKAJ4mXfs8QgHZr1bn2IuP4cfw55ymqrBjfvPA9d3TTfUYSTtQ+FOk3unzKYANjO/Jh89/16h
	4ElAEV1HclNjRisbBmROsl2xusgTBalShix/sPoTHIznZd4zGBs9gEZrJf0W1/MJXCk7wugG5udBV
	6duOlLZh9q1eugJRI5+kdcGw+7p2VUu0X0UzrC0LjZPkHfHMC9b7rwUOVWS1H8+eAolnsB3iS9z28
	365l1lbz6xx5BXyOxRMZSfejyexlDWa8qnjo63I/DGBCjEjeFK1otr/8zOaPl5+9TUiY/Z3ambyHP
	1Y5FaTK3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYHVr-0001uq-5w; Tue, 04 Jun 2019 22:02:35 +0000
Received: from mail-eopbgr50073.outbound.protection.outlook.com ([40.107.5.73]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYHVl-0001uB-R0
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 22:02:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QQGJrWqSwoPFoZ7JNqnDh3iuq3jwunGxYQCQUhqYNr4=;
 b=hP4/Foo1st5n1GbJHz08HGiNvNNMDH+IMIBx87BxxcETYCstdI/xndr80ViZA2Y15Zg5aUqI/NQVYXQng2/81SwQetr5TDHqiy2M62TEayvaevv41j+SNgjhNaWreG4Q9rDF7ncszgt4ljY0U+AAOFnDQHB8Qm++KfCAFnrK39c=
Received: from AM0PR05CA0083.eurprd05.prod.outlook.com (2603:10a6:208:136::23)
 by HE1PR0502MB3019.eurprd05.prod.outlook.com (2603:10a6:3:d9::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1943.22; Tue, 4 Jun
 2019 22:02:24 +0000
Received: from VE1EUR03FT025.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::203) by AM0PR05CA0083.outlook.office365.com
 (2603:10a6:208:136::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.12 via Frontend
 Transport; Tue, 4 Jun 2019 22:02:24 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT025.mail.protection.outlook.com (10.152.18.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1943.19 via Frontend Transport; Tue, 4 Jun 2019 22:02:24 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Wed, 5 Jun 2019 01:02:23
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Wed,
 5 Jun 2019 01:02:23 +0300
Received: from [172.16.0.176] (172.16.0.176) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Wed, 5 Jun 2019 01:02:17
 +0300
Subject: Re: [Suspected-Phishing]Re: [PATCH] Revert "nvme-rdma: remove
 redundant reference between ib_device and tagset"
To: Christoph Hellwig <hch@lst.de>
References: <20190603231159.17034-1-sagi@grimberg.me>
 <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
 <F4E18075-01AA-443B-BF43-23A4BA80C10C@intel.com>
 <d2a20c0f-092d-28ca-3365-1fb5df2cb816@mellanox.com>
 <b4a79dfe-ffc8-0571-9f54-cf5b98c21500@mellanox.com>
 <20190604191131.GC28398@lst.de>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <73b729a8-b3ee-a54a-64a1-2bd2e615e23f@mellanox.com>
Date: Wed, 5 Jun 2019 01:02:16 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604191131.GC28398@lst.de>
Content-Language: en-US
X-Originating-IP: [172.16.0.176]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(136003)(39860400002)(2980300002)(54534003)(199004)(189003)(65826007)(36756003)(356004)(8676002)(8936002)(23676004)(70206006)(2486003)(64126003)(476003)(58126008)(31686004)(47776003)(81166006)(230700001)(6916009)(70586007)(508600001)(305945005)(3846002)(86362001)(81156014)(6116002)(229853002)(11346002)(486006)(65806001)(31696002)(65956001)(5660300002)(53546011)(50466002)(4326008)(14444005)(106002)(336012)(2906002)(76176011)(126002)(2616005)(77096007)(6246003)(54906003)(446003)(316002)(186003)(67846002)(26005)(16576012)(16526019)(7736002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0502MB3019; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7dda9f1f-6835-4e9f-b8ca-08d6e938532f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709080)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:HE1PR0502MB3019; 
X-MS-TrafficTypeDiagnostic: HE1PR0502MB3019:
X-Microsoft-Antispam-PRVS: <HE1PR0502MB3019E1AB1925C859D2AAF8FAB6150@HE1PR0502MB3019.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0058ABBBC7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 3a4lshn2hWA3Aa1JC2/BNCzpEHbjUN8B7rssKwRgTy6QGY9DOpXbsCHZXbDmMohbGcQXHJ+siV97v94PFbXLaDFXCqvGgD6bJLtS22jIV8oWkW/kHOlJT8LYcMSlEdMuo+Ln2dPeEv0pQkoJJSLCNf1ozUxmR95uhAj+hlDyAzQr0XYkUF3PU9g61atVXROjwxAqeR3JgywFuQtYBKhy3PtAWlQcj3E46Y3WT0NnnZd/f+B1g8al61XjXOjtbdGHwNlKlU5k15C4wRwHyN1D+1oo6On5TGRLN1SUtt3MpWV0TZQNhMvgfagGnmICjtFZ66U/nVf/YJuq88bbqhL569TNy6L5xu14hU2GjRIW441fMQdNfyLdrzK4XUL57+ayC7x05kn04nBVA6Gc4B823y+Jllab8VBUVpMdlRh/0cU=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2019 22:02:24.0127 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dda9f1f-6835-4e9f-b8ca-08d6e938532f
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0502MB3019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_150229_917623_782E722E 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Busch, Keith" <keith.busch@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, "Harris, James R" <james.r.harris@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 6/4/2019 10:11 PM, Christoph Hellwig wrote:
> So this basically means we can't keep dma mappings around, which
> is a bit unfortunate.  Can you also write a real changelog explaining
> the reasoning behind it, which isn't quite obvious to me?

Sure I'll explain it when I'll send a final patch. This one was quick 
and dirty one. I put this in our nightly regression and I'll run more 
manual tests tomorrow as well.

This was Sagi's idea actually to dma map and unmap during the actual 
queue_rq and complete_rq to instead of taking a refcount by the 
rdma_ctrl of the rdma_device.

We need this reference since currently we do the dma_unmap during 
exit_request callback and the ibdev might be already freed (disconnect 
during reconnect scenario for example) and we get the trace and crash.

My idea for an alternative fix was taking a ctrl refcount on the device 
and add a blk_iter for remapping the requests. But I guess Sagi's idea 
is simpler.

Another thing that came into my mind during writing the fix is how we 
deal with the scenario that the target ctrl queues depth was changed 
during re-connection ? As we don't destroy the tagset in re-connection, 
we might need to add blk layer helper for that.


>
> Nitpicks below:
>
>> +static void nvme_rdma_unmap_qe(struct ib_device *ibdev, struct nvme_rdma_qe *qe,
>> +			       size_t capsule_size, enum dma_data_direction dir)
>>   {
>>   	ib_dma_unmap_single(ibdev, qe->dma, capsule_size, dir);
>> +}
>> +
>> +static int nvme_rdma_map_qe(struct ib_device *ibdev, struct nvme_rdma_qe *qe,
>> +			    size_t capsule_size, enum dma_data_direction dir)
>> +{
>> +	qe->dma = ib_dma_map_single(ibdev, qe->data, capsule_size, dir);
>> +	return ib_dma_mapping_error(ibdev, qe->dma);
>> +}
>> +
>> +static void nvme_rdma_free_qe(struct nvme_rdma_qe *qe)
>> +{
>>   	kfree(qe->data);
>>   }
> All these helpers are pretty pointless now, and we might as well just
> open code them.
>
>> +static void nvme_rdma_free_mapped_qe(struct ib_device *ibdev,
>> +				     struct nvme_rdma_qe *qe,
>> +				     size_t capsule_size,
>> +				     enum dma_data_direction dir)
> Can you use normal two tabs indents for your new functions?
>
>>   
>>   	ctrl->max_fr_pages = nvme_rdma_get_max_fr_pages(ctrl->device->dev);
>>   
>> -	error = nvme_rdma_alloc_qe(ctrl->device->dev, &ctrl->async_event_sqe,
>> -			sizeof(struct nvme_command), DMA_TO_DEVICE);
>> +	error = nvme_rdma_alloc_mapped_qe(ctrl->device->dev,
>> +					  &ctrl->async_event_sqe,
>> +					  sizeof(struct nvme_command),
>> +					  DMA_TO_DEVICE);
> So.. If keeping SQEs mapped is not fine, why is keeping the AEN SQE
> around fine?

we alloc_map and free_unmap it for each re-connection/error_recovery so 
we're good here. Also for post_recv ring.

For the SQEs we can't hold it since we don't destroy the tagset in 
error_recovery.


>
>> +		if (err == -ENOMEM || err == -EAGAIN)
>> +			ret = BLK_STS_RESOURCE;
>> +		else
>> +			ret = BLK_STS_IOERR;
>> +		goto unmap_qe;
>>   	}
>>   
>>   	sqe->cqe.done = nvme_rdma_send_done;
>> @@ -1735,14 +1781,20 @@ static blk_status_t nvme_rdma_queue_rq(struct blk_mq_hw_ctx *hctx,
>>   			req->mr ? &req->reg_wr.wr : NULL);
>>   	if (unlikely(err)) {
>>   		nvme_rdma_unmap_data(queue, rq);
>> -		goto err;
>> +		if (err == -ENOMEM || err == -EAGAIN)
>> +			ret = BLK_STS_RESOURCE;
>> +		else
>> +			ret = BLK_STS_IOERR;
>> +		goto unmap_qe;
> It would be nice to keep the status mapping in a single place behind
> the goto label.

Yup I'll do it as it was before.

(Was too quick implementation...)

>> +out:
>> +	return ret;
> No real need for the label here, you could just return directly.
Yup.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
