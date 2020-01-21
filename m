Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0648144586
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Jan 2020 20:57:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZSKs3smNAo8Y+enLRPUCgvWaZ5QQkQZZ/RT0BRVmQw=; b=tq2Tu6/iLSLQZh
	L0ceIxqdadJI0RglwyeVwZl0sPqTktxZYLE1xJCBvXPze3qJO7Z+y1yMgVxQon5tH1WXRFS2+i0Hv
	KfUcqQ3OZ5VVASSM5OF+D8wn0L4VJXtGKWpmFWVYvtLMGJCTARvscBOsLpTm/tUc6iJul9t/8fDHg
	645cLJ1dgNusrozqLxIGpeL74zq930+FpB2m0om60ONAoqLJwAm3sRvjpCH4FzU8RaYsP6IVEw7E0
	7Ktv5mwzfE6bq++9g4v0AGAsfRAFTJDJjCBQPWXF7mHp7p2myi7BC0ejcTK5k2Bu9eY1Wf7XK0Egu
	XltcpOcaNRN5sW/fHjvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itzeY-0000R7-Sj; Tue, 21 Jan 2020 19:57:34 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itzeO-0000Po-5f
 for linux-nvme@lists.infradead.org; Tue, 21 Jan 2020 19:57:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1579636644; x=1611172644;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=2AM9PR3Tvgu7t+SfNKaHveu2VLV9169Zlv+ZZ4N0qpA=;
 b=GqonSkG1PPyw6rR7S3pSW3S/hXu367cUZA2OJfvhEOp/zw+jRonF7I6B
 5omlxymQZRWBvpgfgOwhYmUKeJHZkta5XKIOqLuSPMDF0PXVRq2hr5qUw
 RZrGbwsFySvo/C9ByEZgc05ebHphWg8CG7+eZlS7boXQLBnXLayty0noP Y=;
IronPort-SDR: lY544I0KRAUsk4zKrPAMJmf3DphIrhLymowpbI89rShMVyOxxuTd5Dv3rwxoF3PoPih7muUPU3
 ObTngVwRiScA==
X-IronPort-AV: E=Sophos;i="5.70,347,1574121600"; d="scan'208";a="14090811"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1a-7d76a15f.us-east-1.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 21 Jan 2020 19:57:23 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1a-7d76a15f.us-east-1.amazon.com (Postfix) with ESMTPS
 id DF83CA2743; Tue, 21 Jan 2020 19:57:19 +0000 (UTC)
Received: from EX13D11UWB004.ant.amazon.com (10.43.161.90) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.207) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 21 Jan 2020 19:57:19 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13D11UWB004.ant.amazon.com (10.43.161.90) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 21 Jan 2020 19:57:19 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Tue, 21 Jan 2020 19:57:19 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "hch@lst.de" <hch@lst.de>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>
Subject: Re: [resend v1 1/5] block/genhd: Notify udev about capacity change
Thread-Topic: [resend v1 1/5] block/genhd: Notify udev about capacity change
Thread-Index: AQHVxdHjydawp/BwQkuXvP0PUEOjWqfg3jQAgBTAIAA=
Date: Tue, 21 Jan 2020 19:57:18 +0000
Message-ID: <a1a36b7163c10fd6c9450ba631f26b9ce23dc3f7.camel@amazon.com>
References: <20200102075315.22652-1-sblbir@amazon.com>
 <20200102075315.22652-2-sblbir@amazon.com> <yq1ftgs2b6g.fsf@oracle.com>
 <d1635bae908b59fb4fd7de7c90ffbd5b73de7542.camel@amazon.com>
 <yq17e221vvt.fsf@oracle.com> <20200108150428.GB10975@lst.de>
In-Reply-To: <20200108150428.GB10975@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.48]
Content-ID: <AB767E631009EE4F8B8589D586BA62FF@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_115724_341774_6072AA96 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>, "Sangaraju, 
 Someswarudu" <ssomesh@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 2020-01-08 at 16:04 +0100, hch@lst.de wrote:
> On Tue, Jan 07, 2020 at 10:15:34PM -0500, Martin K. Petersen wrote:
> > 
> > Balbir,
> > 
> > > I did this to avoid having to enforce that set_capacity() implied a
> > > notification. Largely to control the impact of the change by default.
> > 
> > What I thought. I'm OK with set_capacity_and_notify(), btw.
> 
> To some extent it might make sense to always notify from set_capacity
> and have a set_capacity_nonotify if we don't want to notify, as in
> general we probably should notify unless we have a good reason not to.

I am not sure if this is the right path, since with the new interface, we'll
now have revalidate disk bits built into the function (see the comments from
Bob earlier). I'd be happier converting interfaces a few at a time, A quick
grep found over 100 references and I am not even sure how many of them are
resizable without hotplug in/out on the fly. Hence, I limited myself to the
small subset, I could consider expanding it later based on the need and their
ability to resize on the fly

Balbir Singh.
_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
