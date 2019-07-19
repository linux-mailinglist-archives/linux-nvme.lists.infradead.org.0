Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6890E6E04C
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 06:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=YCx2EVajxRG2n/lum3XNFaExkY6z2uyShfSeqsAgn/s=; b=dfv8qBqphBSSPk
	vIeaKAIcJfSrJV105ID+/qaxjubbpQ9EJdqaf3ctSbquU0nORGf2QqKRcYqQEvYD5IbOUxQDIbJcD
	iHjyXtLeAnNllX29Q/5enjiwyHaaNlkbh4KoKMyL2CS+kgLATKEsblYJRfahVDZwBwtOV3NuVmG6O
	Qdiq5dR73GWdkaEXhevZ/6y63v9Fr5IG0uQLhS9pK2BrzVfw7Amn/KsT8j0M2RiyfIi1gmG/RhISk
	rWxYvq/ItHAyfpxBHlO9r105jCdtKO41mebh+DbV+1s1Acbc1eTmhHJ60R8qPCRqoHV1K0TEANsxt
	tXkPtCyP6GZ8IvzBzhBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoKkb-0000eM-SE; Fri, 19 Jul 2019 04:44:10 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoKkT-0000di-3Q
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 04:44:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563511441; x=1595047441;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=gjbty5vD9rM8SOzuvMO6ltoSI6pEnL0paS9hWo1vpgw=;
 b=rudrmvCmtOnQSoscRSU2mN1CGsv3mwxXQGiF8r73KKStP0vIefDpYNbW
 N0IhR4CpPFb190u9Usi4GJe6tEEvrPeYDd9MOpeIY2Jb0B/zh7A3YIA5u
 4uq9mNHLn8XCES+DGnZSeyd/cs/tBqO7b5ZW8vXyFbTd1pP3u/cUbjU39
 UbskV2fblF6/laiMRemVecUaOYkdk42VnG8u0N06X1FcOebhYkkW2SFWG
 EcBkutQPOQnSaIRgtUVdD5D8T4k2sNU2Ht0AnQwGXOu+MWXBBUiy9Cyp8
 VZnUlhDdkJ2f+3hUcoAjDuE78Oziu2vIhcQZmqH4XoSsCrgJtkXDkLfvE g==;
IronPort-SDR: QrmPgR/YL6tqPWoTCClcHRFWWNHqx/Zm2Wr0182Vgnv5otZRucskbffji05OQMdc3UVffsmUBm
 3RzFUFlpfO1gd6zNhD2b6q/QzZYArZO8MavTuvMtBFYBB+6b6+7rGGY/bXAPArS7ny/w7oUNsn
 mz+k8ZrYSjPntMSUfIum5EPL78kvjSsklxjOm8ItyWqn4LWchBD7oaIlVQ5xqSLdF01+AyhKwz
 Csd/NbQfTSpNl4Nh4FwbUNJCd333IpKQfn154rKrU7I88HntptFKVlL3uOBHnxOnCuJmufP/62
 9YQ=
X-IronPort-AV: E=Sophos;i="5.64,280,1559491200"; d="scan'208";a="115065731"
Received: from mail-co1nam04lp2053.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.53])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jul 2019 12:43:56 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eypB9UUhPtCB49pukUaJKwLLra0xZVjqXTTJ9MTeVFmlAQ3ANjWXDqjwrfNHwSS5W8thBsLoGmO+Oe+G+cy9fJsKoXUlgWQaWBH4SlvyZNc6aTTSHLsDfRS8hYwJaOpywzGXhkSlWcc8a7F2vxMJ5/GaW7AJWyPHuT7Op2Z+HT8M74PHyB4myPVV3dJ70ADGhqJe+hkCSGjndA3q+RjLtdHQQGySgc12iP6bpuKUBuBaNkXdPLpcCTzNGHh8FSlTAGxJsF5wPmoWFR91tulQGMTNIIfSLjfEotW02EMEny9GDmbccRYVoHYKL3dFg/IDSJw1vVyoQTuCROOGpSWyXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a6SUP+IhPh2QkKoDU/Tag7ESMJhFWaw/To9vx+e8iBo=;
 b=NbrjN1IYwvwsSOQnUZM1OvTL0+BijOjagdb9dc2iTF/2EbvtIR4TRpLZPbeAUCcrddluAA8KjlWlq4ShKj1DPMF1s6ccheVGbWUiAt4y9kAkWbvtf1fnKlMcbfFz2wV81ggFAKe7trb80qpn7PvhWqP5CEfOE2DH+A2/0hZWSgyJa/BppIOht4vFn0r74Re+gNKB6o7dJLGDUC157P6IB13sr03Hfy7GKjy8AaqTAz6fnq71Z7r6gs1mjqTi2r9md2HP83QszlDHGwnd0AkbluWzWSQUbFroJvsHwDNWJEtYLFaE8ZTPKq6pajnAbZI/6IUPURYbMxuSZQB1atar2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a6SUP+IhPh2QkKoDU/Tag7ESMJhFWaw/To9vx+e8iBo=;
 b=joyjXpPTMZ6rCwfQKv9BYLJylLAMD6fOuzKHV1XBW2cMAs4/Y8TKVU3qv+9byOPYb5SDs3U8tS5uHdeaWDzPUmpaPl+VfkOK7n49VzjHBGIQS8cr8dszudUgTh3fQGWS2NZRVTF2OD+38nEFQFsA9fnkK8fVelXauacmu7XWJFM=
Received: from BYAPR04MB5816.namprd04.prod.outlook.com (20.179.58.207) by
 BYAPR04MB5109.namprd04.prod.outlook.com (52.135.235.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Fri, 19 Jul 2019 04:43:55 +0000
Received: from BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::65a9:db0a:646d:eb1e]) by BYAPR04MB5816.namprd04.prod.outlook.com
 ([fe80::65a9:db0a:646d:eb1e%6]) with mapi id 15.20.2073.012; Fri, 19 Jul 2019
 04:43:55 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH v2] nvme-pci: Support shared tags across queues for Apple
 2018 controllers
Thread-Topic: [PATCH v2] nvme-pci: Support shared tags across queues for Apple
 2018 controllers
Thread-Index: AQHVPeud+CKl01N5fESdJwM9xjcYQQ==
Date: Fri, 19 Jul 2019 04:43:54 +0000
Message-ID: <BYAPR04MB58168C42A68712287F734242E7CB0@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <f19ac710b4dc28fb3b59ef11bd06d341bc939f3d.camel@kernel.crashing.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [60.117.181.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 043c1f5b-f90d-4877-09a8-08d70c03b49b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5109; 
x-ms-traffictypediagnostic: BYAPR04MB5109:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR04MB5109E8BE6B65A203F5E17456E7CB0@BYAPR04MB5109.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01039C93E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(346002)(136003)(39860400002)(396003)(366004)(47660400002)(189003)(199004)(66556008)(66446008)(76116006)(64756008)(74316002)(91956017)(66476007)(99286004)(478600001)(86362001)(25786009)(316002)(66946007)(81166006)(229853002)(71200400001)(54906003)(33656002)(68736007)(486006)(7736002)(3846002)(6436002)(2501003)(55016002)(6246003)(53546011)(110136005)(76176011)(71190400001)(7696005)(186003)(53936002)(6306002)(9686003)(81156014)(256004)(476003)(14444005)(14454004)(2906002)(5660300002)(52536014)(4326008)(102836004)(8936002)(6506007)(66066001)(6116002)(26005)(966005)(305945005)(8676002)(446003)(46800400005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5109;
 H:BYAPR04MB5816.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uCfaqw9BDNky7oSsW2pouU0Xt54QAevraPmm08Qlwr7kIpS//ocLTWmi+nqr3pnIOYWFQI6Y5jBoRlpBtWJydT5Q/6UbSdshFkNipt7shjW3iFTSCBoYpg7nA4hk6R+76xXFsntlGBvq8NMJoIsUmd4SZl/v416yv7euIkHyhLzi0y9cPpGTwEaeIRhKtMfJLsbdnpWjNvGPKAHB2WTVgle7QoSU3g+fI3FhUfvGAf7GJlpISSiTsJj1238ui5HusA/MExccognqu5j0EAb4T1gB46dxbEG11AXC3pewbZiZe3FVtmneY3ZhSb7cyWJHgvX9F1LaCecI3kv9zj7LSg9Cr6jcrkBzYgej+W88VgpBjFYGKcajBwuFCCs8pQeBgb/H/C187p/KF14FcwFNQvO2fBqaqHEo6tan8dOTbak=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 043c1f5b-f90d-4877-09a8-08d70c03b49b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 04:43:54.9579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Damien.LeMoal@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_214401_299043_B8320149 
X-CRM114-Status: GOOD (  31.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Pawlowski <paul@mrarm.io>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2019/07/19 13:37, Benjamin Herrenschmidt wrote:
> Another issue with the Apple T2 based 2018 controllers seem to be
> that they blow up (and shut the machine down) if there's a tag
> collision between the IO queue and the Admin queue.
> 
> My suspicion is that they use our tags for their internal tracking
> and don't mix them with the queue id. They also seem to not like
> when tags go beyond the IO queue depth, ie 128 tags.
> 
> This adds a quirk that offsets all the tags in the IO queue by 32
> to avoid those collisions. It also limits the number of IO queues
> to 1 since the code wouldn't otherwise make sense (the device
> supports only one queue anyway but better safe than sorry) and
> reduces the size of the IO queue

What about keeping the IO queue QD at 128, but marking the first 32 tags as
"allocated" when the device is initialized ? This way, these tags numbers are
never used for regular IOs and you can avoid the entire tag +/- offset dance at
runtime. The admin queue uses tags 0-31 and the IO queue uses tags 32-127. No ?

> 
> Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> ---
> 
> Note: One thing I noticed is how we have nvme_completion as volatile.
> 
> I don't think we really need that, it's forcing the compiler to constantly
> reload things which makes no sense once we have established that an
> entry is valid.
> 
> And since we have a data & control dependency from nvme_cqe_pending(),
> we know that reading the CQE is going to depend on it being valid. I
> don't really see what volatile is buying us here other than cargo culting.
> 
> Cheers,
> Ben.
> 
>  drivers/nvme/host/nvme.h |  5 ++++
>  drivers/nvme/host/pci.c  | 52 +++++++++++++++++++++++++++++++++-------
>  2 files changed, 49 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index ced0e0a7e039..7c6de398de7d 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -102,6 +102,11 @@ enum nvme_quirks {
>  	 * Use non-standard 128 bytes SQEs.
>  	 */
>  	NVME_QUIRK_128_BYTES_SQES		= (1 << 11),
> +
> +	/*
> +	 * Prevent tag overlap between queues
> +	 */
> +	NVME_QUIRK_SHARED_TAGS			= (1 << 12),
>  };
>  
>  /*
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 7088971d4c42..c38e946ad8ca 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -178,6 +178,7 @@ struct nvme_queue {
>  	u16 cq_head;
>  	u16 last_cq_head;
>  	u16 qid;
> +	u16 tag_offset;
>  	u8 cq_phase;
>  	u8 sqes;
>  	unsigned long flags;
> @@ -490,6 +491,7 @@ static void nvme_submit_cmd(struct nvme_queue *nvmeq, struct nvme_command *cmd,
>  			    bool write_sq)
>  {
>  	spin_lock(&nvmeq->sq_lock);
> +	cmd->common.command_id += nvmeq->tag_offset;
>  	memcpy(nvmeq->sq_cmds + (nvmeq->sq_tail << nvmeq->sqes),
>  	       cmd, sizeof(*cmd));
>  	if (++nvmeq->sq_tail == nvmeq->q_depth)
> @@ -951,9 +953,10 @@ static inline void nvme_ring_cq_doorbell(struct nvme_queue *nvmeq)
>  static inline void nvme_handle_cqe(struct nvme_queue *nvmeq, u16 idx)
>  {
>  	volatile struct nvme_completion *cqe = &nvmeq->cqes[idx];
> +	u16 ctag = cqe->command_id - nvmeq->tag_offset;
>  	struct request *req;
>  
> -	if (unlikely(cqe->command_id >= nvmeq->q_depth)) {
> +	if (unlikely(ctag >= nvmeq->q_depth)) {
>  		dev_warn(nvmeq->dev->ctrl.device,
>  			"invalid id %d completed on queue %d\n",
>  			cqe->command_id, le16_to_cpu(cqe->sq_id));
> @@ -966,14 +969,13 @@ static inline void nvme_handle_cqe(struct nvme_queue *nvmeq, u16 idx)
>  	 * aborts.  We don't even bother to allocate a struct request
>  	 * for them but rather special case them here.
>  	 */
> -	if (unlikely(nvmeq->qid == 0 &&
> -			cqe->command_id >= NVME_AQ_BLK_MQ_DEPTH)) {
> +	if (unlikely(nvmeq->qid == 0 && ctag >= NVME_AQ_BLK_MQ_DEPTH)) {
>  		nvme_complete_async_event(&nvmeq->dev->ctrl,
>  				cqe->status, &cqe->result);
>  		return;
>  	}
>  
> -	req = blk_mq_tag_to_rq(*nvmeq->tags, cqe->command_id);
> +	req = blk_mq_tag_to_rq(*nvmeq->tags, ctag);
>  	trace_nvme_sq(req, cqe->sq_head, nvmeq->sq_tail);
>  	nvme_end_request(req, cqe->status, cqe->result);
>  }
> @@ -1004,7 +1006,10 @@ static inline int nvme_process_cq(struct nvme_queue *nvmeq, u16 *start,
>  
>  	*start = nvmeq->cq_head;
>  	while (nvme_cqe_pending(nvmeq)) {
> -		if (tag == -1U || nvmeq->cqes[nvmeq->cq_head].command_id == tag)
> +		u16 ctag = nvmeq->cqes[nvmeq->cq_head].command_id;
> +
> +		ctag -= nvmeq->tag_offset;
> +		if (tag == -1U || ctag == tag)
>  			found++;
>  		nvme_update_cq_head(nvmeq);
>  	}
> @@ -1487,6 +1492,10 @@ static int nvme_alloc_queue(struct nvme_dev *dev, int qid, int depth)
>  	nvmeq->qid = qid;
>  	dev->ctrl.queue_count++;
>  
> +	if (qid && (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS))
> +		nvmeq->tag_offset = NVME_AQ_DEPTH;
> +	else
> +		nvmeq->tag_offset = 0;
>  	return 0;
>  
>   free_cqdma:
> @@ -2106,6 +2115,14 @@ static int nvme_setup_io_queues(struct nvme_dev *dev)
>  	unsigned long size;
>  
>  	nr_io_queues = max_io_queues();
> +
> +	/*
> +	 * If tags are shared with admin queue (Apple bug), then
> +	 * make sure we only use one queue.
> +	 */
> +	if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS)
> +		nr_io_queues = 1;
> +
>  	result = nvme_set_queue_count(&dev->ctrl, &nr_io_queues);
>  	if (result < 0)
>  		return result;
> @@ -2300,6 +2317,7 @@ static int nvme_pci_enable(struct nvme_dev *dev)
>  {
>  	int result = -ENOMEM;
>  	struct pci_dev *pdev = to_pci_dev(dev->dev);
> +	unsigned int mqes;
>  
>  	if (pci_enable_device_mem(pdev))
>  		return result;
> @@ -2325,8 +2343,8 @@ static int nvme_pci_enable(struct nvme_dev *dev)
>  
>  	dev->ctrl.cap = lo_hi_readq(dev->bar + NVME_REG_CAP);
>  
> -	dev->q_depth = min_t(int, NVME_CAP_MQES(dev->ctrl.cap) + 1,
> -				io_queue_depth);
> +	mqes = NVME_CAP_MQES(dev->ctrl.cap);
> +	dev->q_depth = min_t(int, mqes + 1, io_queue_depth);
>  	dev->db_stride = 1 << NVME_CAP_STRIDE(dev->ctrl.cap);
>  	dev->dbs = dev->bar + 4096;
>  
> @@ -2340,6 +2358,23 @@ static int nvme_pci_enable(struct nvme_dev *dev)
>  	else
>  		dev->io_sqes = NVME_NVM_IOSQES;
>  
> +	/*
> +	 * Another Apple one: If we're going to offset the IO queue tags,
> +	 * we still want to make sure they are no bigger than MQES,
> +	 * it *looks* like otherwise, bad things happen (I suspect some
> +	 * of the tag tracking in that device is limited).
> +	 */
> +	if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS) {
> +		if (mqes <= NVME_AQ_DEPTH) {
> +			dev_err(dev->ctrl.device, "Apple shared tags quirk"
> +				" not compatible with device mqes %d\n", mqes);
> +			result = -ENODEV;
> +			goto disable;
> +		}
> +		dev->q_depth = min_t(int, dev->q_depth,
> +				     mqes - NVME_AQ_DEPTH + 1);
> +	}
> +
>  	/*
>  	 * Temporary fix for the Apple controller found in the MacBook8,1 and
>  	 * some MacBook7,1 to avoid controller resets and data loss.
> @@ -3057,7 +3092,8 @@ static const struct pci_device_id nvme_id_table[] = {
>  	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2003) },
>  	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2005),
>  		.driver_data = NVME_QUIRK_SINGLE_VECTOR |
> -				NVME_QUIRK_128_BYTES_SQES },
> +				NVME_QUIRK_128_BYTES_SQES |
> +				NVME_QUIRK_SHARED_TAGS },
>  	{ 0, }
>  };
>  MODULE_DEVICE_TABLE(pci, nvme_id_table);
> 
> 
> 
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme
> 


-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
