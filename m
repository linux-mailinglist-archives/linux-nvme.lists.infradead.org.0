Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D794735021
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 21:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMC9dSob7YEJf3LvVyvlvi+la2aQobHKnGaK9VgThPc=; b=FZeSp9oEiax63w
	6e5ZeovWmPTrRMOiSmzkFCdF7kJOjGAtl7EDJIn2qteTRYrFxKvOCY+05UWKTKXMujcMq1MX2p+bb
	lEVUpfHw8Ir/TjX0cmzdD18Maxnp8pHYpL0nIl/0i5sNRkgIKlcxfEIr7g1O+7WMoC+6oMBD97Un6
	Tpc1TBGlspEO1zFXInMm36MjygrfLftognzjaY29kOVXmhSbRG+JJB2w8NJREhU/AWolbAw/KTNsg
	k2sPPSjv4lCGOQScJ6wNAMuJR5k89wN83NYmhsEcr6uWo8xwuH5atR0wlc+eM5RPajjoe5B4078S5
	bcW02fQt2F0B6ATbCNnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYEkY-0002JK-Vp; Tue, 04 Jun 2019 19:05:34 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYEkU-0002J0-Eq
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 19:05:32 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 6DAA668B05; Tue,  4 Jun 2019 21:05:02 +0200 (CEST)
Date: Tue, 4 Jun 2019 21:05:02 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [Suspected-Phishing]Re: [PATCH] Revert "nvme-rdma: remove
 redundant reference between ib_device and tagset"
Message-ID: <20190604190501.GB28398@lst.de>
References: <20190603231159.17034-1-sagi@grimberg.me>
 <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
 <F4E18075-01AA-443B-BF43-23A4BA80C10C@intel.com>
 <d2a20c0f-092d-28ca-3365-1fb5df2cb816@mellanox.com>
 <b4a79dfe-ffc8-0571-9f54-cf5b98c21500@mellanox.com>
 <251f83e0-75f1-ef0b-2747-8ae09f038ce8@grimberg.me>
 <cb21c45b-2ffc-107b-172a-d9f653e90402@mellanox.com>
 <288d4db3-ca7e-c60f-b7ac-5a6ff2771235@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <288d4db3-ca7e-c60f-b7ac-5a6ff2771235@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_120530_650766_3E69F19F 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Harris,
 James R" <james.r.harris@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 08:55:56AM -0700, Sagi Grimberg wrote:
>
>>>> James,
>>>>
>>>> can you test the attached patch (without the revert) ?
>>>
>>> Max, I think that its pretty late for this change for 5.2,
>>> I'm leaning towards reverting the offending patch for 5.2-rc and
>>> getting this into 5.3
>>
>> are you sure ?
>>
>> we're only at rc3..
>
> This is beyond a bug fix, its a behavior change, with possible other
> implications. This is really something that is merge window material
> I think. I would rather let it sit for nvme-5.3 for a while before
> we merge it.
>
> Christoph, do you have a different preference?

The original patch from Max fixed a serious issue, so I'd prefer not
to revert it, especially as we are only at rc3.  That assumes we
can agree on a fix in the next couple of days.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
