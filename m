Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987B9130EE7
	for <lists+linux-nvme@lfdr.de>; Mon,  6 Jan 2020 09:47:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRHrKTuUL+dga3ziDzSqhMPd6KYyp5v9bfmIuUcH99A=; b=Gldkg1kcU+llnP
	qhUEq29PeUiNtWHjJsu86ZcOqafEZlo2Kc8w067RloW4XEjjsCIQ362YnF4JXwVFs545++9ypaG5N
	6JNfAocaJkzuoaSDex1x/b1yC6e06mNiuBrTEmf7E9E9UEdvrwWyNPQErEQjj0ZAiMm5Q47cUczqa
	/a9Kic5niqgqVTy4F6H9aFWX43fsdzk5XEtDkwV7qH5dmY7WqCtJKCfRws8a12fQC3b5pbY5wqfq5
	es3tlIbN/o0vUNe7ytmUeLsdHmVo7iRspAOTjWfBs/Qz2Ml8TMCbG1CMzUjbITJJjt1//BmBgcVvm
	KKJO1k1++5/UXSOFzUDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioO2s-0005AV-Cg; Mon, 06 Jan 2020 08:47:30 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioO2m-00059h-8N
 for linux-nvme@lists.infradead.org; Mon, 06 Jan 2020 08:47:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1578300445; x=1609836445;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ix5h9iU4MplLeme2iLjVHaJ92Uaud1kBSOfPMOmtTy0=;
 b=tGHUiUueoo8x8HjbWURloTSsKyKCFBADWEkTab8qUs/+XNbGdhBpfd4L
 YEr9p2/R7ttcSCvG3t1B/C8JDursPYBZzd1v/whoW5h/ATsRe5+lUj+/j
 Z/faU3BixEO2+2ZA534U0b2xRm5XCoFrJjdMItX1A+mbAMNmcwICkGxxa E=;
IronPort-SDR: Dm6wR7zJAlUlUyRh5QULx4yI90ylhLA4vmAmCCbXBcA08vZVTRLPX+4gIo9ktDUC7rF7AWkhtN
 ZoEdfrjPq0Ig==
X-IronPort-AV: E=Sophos;i="5.69,401,1571702400"; 
   d="scan'208";a="8546392"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1a-16acd5e0.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 06 Jan 2020 08:47:12 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1a-16acd5e0.us-east-1.amazon.com (Postfix) with ESMTPS
 id 1BA64A2083; Mon,  6 Jan 2020 08:47:07 +0000 (UTC)
Received: from EX13D11UWB002.ant.amazon.com (10.43.161.20) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 6 Jan 2020 08:47:07 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13D11UWB002.ant.amazon.com (10.43.161.20) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 6 Jan 2020 08:47:07 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Mon, 6 Jan 2020 08:47:07 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bob.liu@oracle.com" <bob.liu@oracle.com>, "linux-block@vger.kernel.org"
 <linux-block@vger.kernel.org>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [resend v1 0/5] Add support for block disk resize notification
Thread-Topic: [resend v1 0/5] Add support for block disk resize notification
Thread-Index: AQHVwUGyPPcy7lGHrU2FjB+Vz+cImqfdKliAgAAuqAA=
Date: Mon, 6 Jan 2020 08:47:06 +0000
Message-ID: <f260159c7c56a08711240cc6c7f69d2d5327a449.camel@amazon.com>
References: <20200102075315.22652-1-sblbir@amazon.com>
 <62ef2cd2-42a2-6117-155d-ed052a136c5c@oracle.com>
In-Reply-To: <62ef2cd2-42a2-6117-155d-ed052a136c5c@oracle.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.101]
Content-ID: <00642D1230BA1646B79D85953B680334@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_004724_343009_F713C5DF 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "Chaitanya.Kulkarni@wdc.com" <Chaitanya.Kulkarni@wdc.com>,
 "mst@redhat.com" <mst@redhat.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "Sangaraju, Someswarudu" <ssomesh@amazon.com>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 2020-01-06 at 13:59 +0800, Bob Liu wrote:
> On 1/2/20 3:53 PM, Balbir Singh wrote:
> > Allow block/genhd to notify user space about disk size changes
> > using a new helper disk_set_capacity(), which is a wrapper on top
> > of set_capacity(). disk_set_capacity() will only notify if
> > the current capacity or the target capacity is not zero.
> > 
> 
> set_capacity_and_notify() may be a more straightforward name.
> 

Yes, agreed.

> > Background:
> > 
> > As a part of a patch to allow sending the RESIZE event on disk capacity
> > change, Christoph (hch@lst.de) requested that the patch be made generic
> > and the hacks for virtio block and xen block devices be removed and
> > merged via a generic helper.
> > 
> > This series consists of 5 changes. The first one adds the basic
> > support for changing the size and notifying. The follow up patches
> > are per block subsystem changes. Other block drivers can add their
> > changes as necessary on top of this series.
> > 
> > Testing:
> > 1. I did some basic testing with an NVME device, by resizing it in
> > the backend and ensured that udevd received the event.
> > 
> > NOTE: After these changes, the notification might happen before
> > revalidate disk, where as it occured later before.
> > 
> 
> It's better not to change original behavior.
> How about something like:
> 
> +void set_capacity_and_notify(struct gendisk *disk, sector_t size, bool
> revalidate)
> {
> 	sector_t capacity = get_capacity(disk);
> 
> 	set_capacity(disk, size);
> 
> +        if (revalidate)
> +		revalidate_disk(disk);

Do you see a concern with the notification going out before revalidate_disk?
I could keep the behaviour and come up with a suitable name

revalidate_disk_and_notify() (set_capacity is a part of the revalidation
process), or feel free to suggest a better name

Thanks,
Balbir Singh

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
