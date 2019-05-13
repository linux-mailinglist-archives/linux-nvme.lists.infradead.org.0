Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E011B9D8
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 17:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ZMqqisnKwalu9f19AXdYiqNcbyQPDym2vnJcgzay4MQ=; b=Gr+FMG/jYUzetW
	akAL5tggazQq1XLV0PFHIxbhP6VzbO84K9cY5jiPkx9Mty64LNdKJsVWD1XXAt/agDbuxKvtJx7AY
	D/CXVspLCmzrAuz4f56ARX+4cHbcM/kCAnukuLt/aZq/HQbq4MX9ZFRwPFdo0sfvyCt9DQsp2qeLE
	yrEWbocNn389dcP6XIrawN8cEMBM5ky4GjOReP11fuLxyX/+8B582BJUpzavmjZrCz9VVAdr5Y8vT
	Wq9mQ3HBiEJ3yifs8dnkhjPjSlAyxsNbbi0LFpmY/vjiks0WQ7Z0QtglO13NBLEb1dpfZq6hjE01u
	tIjuXvkfjkhDbl27kPTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCnp-0001qr-Be; Mon, 13 May 2019 15:23:45 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCnj-0001pv-Hu
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 15:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557761019; x=1589297019;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=qOMlTtORDfEtXowtpsmMV4k9pulCLZtn0Ih/k7hdTaE=;
 b=EToT1+D6sUsWGxKsVDuabTODCdQ2xiGt+yLtX0O8gtjE66HtjneNLl8j
 RV716PVZEsasWcySOAlgXo3ZYfl9wH9wfNhSVaxx0mgiB/TtD1+vpmh/f
 Y3w2ZOy7ZcXnRrIB+ZV7Xe+KmZ1ENx9M2Tu9X5RRO0CNytPiV+reKXLMI
 9+qR/juM15Pd40TFone6bGx3xswQp+KdquhlthSam7G8m+5pSDiV04mOX
 2HPpuRD00p/rDpjB54N0BYuoUNAWAvkodC9Lbc0QcVV8TUTnQ6UNkIprz
 K5efk7XyXk0CXV7ckq0LaYZV3afNqyfP41GNrXkkZNqq4Qu3mbpGGT6GL A==;
X-IronPort-AV: E=Sophos;i="5.60,465,1549900800"; d="scan'208";a="214222742"
Received: from mail-co1nam03lp2058.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.58])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2019 23:23:35 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BaPm5V1BnOM41I7mPlHmTbZTWTom/NXNGwav3sHgddI=;
 b=Pe9G4XEE655HylhpyIHdI5gHGY2RCjNDYve0sfPAnJGE+78pCUc9UnZuLae7lYAWnFXyFQl8RCve9ZZE3D5eI0fY/4lRbAz8v0tmNZYActxdftzgF9KbOcZAP9gU4ZmtA0WkISnLZHe4DkoDL/5VhtrIbK28bd0/a3H/texnFMk=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4944.namprd04.prod.outlook.com (52.135.114.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Mon, 13 May 2019 15:23:32 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 15:23:32 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: "minwoo.im@samsung.com" <minwoo.im@samsung.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 5/7] nvme-pci: add device coredump infrastructure
Thread-Topic: [PATCH v3 5/7] nvme-pci: add device coredump infrastructure
Thread-Index: AQHVCNsnTq1EcjR34keOomYpqyVeRw==
Date: Mon, 13 May 2019 15:23:32 +0000
Message-ID: <SN6PR04MB4527DFC75838C3236F5D05B2860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <1557676457-4195-6-git-send-email-akinobu.mita@gmail.com>
 <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <CGME20190512155540epcas4p14c15eb86b08dcd281e9a93a4fc190800@epcms2p1>
 <20190513074601epcms2p12c0a32730a16be3b69b68e3c9d4d0b92@epcms2p1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c22052b7-3352-4936-2d36-08d6d7b6f5c6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4944; 
x-ms-traffictypediagnostic: SN6PR04MB4944:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB49443CE1CE7BE3B6A7A0DEED860F0@SN6PR04MB4944.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(376002)(136003)(39860400002)(346002)(199004)(189003)(486006)(186003)(54906003)(110136005)(66066001)(476003)(446003)(6436002)(26005)(305945005)(7736002)(33656002)(9686003)(99286004)(55016002)(6306002)(2906002)(316002)(68736007)(7416002)(73956011)(66946007)(66476007)(66556008)(64756008)(66446008)(53936002)(91956017)(76116006)(2501003)(229853002)(71200400001)(6246003)(81156014)(14454004)(5660300002)(72206003)(966005)(71190400001)(52536014)(81166006)(8676002)(76176011)(86362001)(4326008)(8936002)(25786009)(74316002)(7696005)(3846002)(6116002)(6506007)(256004)(53546011)(478600001)(102836004)(2201001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4944;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: lYaBlD+EQT1U6gK8Ey8NrcPX1dG0nHy0HQNIXzOwilYf6+fzohnAE0ViIAJOeas6lKmBWXg6zGvAb3BtiUwigvTpjh1MmpBNolLmGArCAXGBjTt6DxRzQfbekMpBcfkMkl9+uxYP4C9n/ow/JQXhZy34ZV3LKkfJ70P+uVuw0MtKIzVKtwNPj0cR71xtBKwV+Dk73rAMQYTWm8UW5gMYWMgj4SO6xKfDU6dSm9eab3fBK+IRLrMHPNvU3bOFxt9j97Rena6bPAa2/cbtgFJd4GWKSAlizpQb9rmZ1WCaR8/aGNlxr9dugpqOK7czCXL9yrg9IMdQxHkV2B/cAFSut38AtpgHoxm/YWUETyo/UadLgF7rqEndeoiInMDMpJN138hyTJcrWeUDjmgvTYPdwq5QFxwv8p4pVfSx+Mu3vaI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c22052b7-3352-4936-2d36-08d6d7b6f5c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 15:23:32.5348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_082339_598972_8D28FB2D 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 05/13/2019 12:46 AM, Minwoo Im wrote:
>> +static int nvme_get_telemetry_log_blocks(struct nvme_ctrl *ctrl, void *buf,
>> +					 size_t bytes, loff_t offset)
>> +{
>> +	loff_t pos = 0;
>> +	u32 chunk_size;
>> +
>> +	if (check_mul_overflow(ctrl->max_hw_sectors, 512u, &chunk_size))
>> +		chunk_size = UINT_MAX;
>> +
>> +	while (pos < bytes) {
>> +		size_t size = min_t(size_t, bytes - pos, chunk_size);
>> +		int ret;
>> +
>> +		ret = nvme_get_log(ctrl, NVME_NSID_ALL,
>> NVME_LOG_TELEMETRY_CTRL,
>> +				   0, buf + pos, size, offset + pos);
>> +		if (ret)
>> +			return ret;
>> +
>> +		pos += size;
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static int nvme_get_telemetry_log(struct nvme_ctrl *ctrl,
>> +				  struct sg_table *table, size_t bytes)
>> +{
>> +	int n = sg_nents(table->sgl);
>> +	struct scatterlist *sg;
>> +	size_t offset = 0;
>> +	int i;
>> +
A little comment would be nice if you are using sg operations.
>> +	for_each_sg(table->sgl, sg, n, i) {
>> +		struct page *page = sg_page(sg);
>> +		size_t size = min_t(int, bytes - offset, sg->length);
>> +		int ret;
>> +
>> +		ret = nvme_get_telemetry_log_blocks(ctrl,
>> page_address(page),
>> +						    size, offset);
>> +		if (ret)
>> +			return ret;
>> +
>> +		offset += size;
>> +	}
>> +
>> +	return 0;
>> +}
>
> Can we have those two in nvme-core module instead of being in pci module?

Since they are based on the controller they should be moved next to 
nvme_get_log() in the ${KERN_DIR}/drivers/nvme/host/core.c.

>
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
