Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932CB79222
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Jul 2019 19:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=248borTfuDmA4cXMcOp2R0vVOBaI3kgZafHCxa+YjwM=; b=P767v3VI0eGBnD
	BzODnP7rBjOveD+GWTOqXtIEZyS5lkvBPmWD7nG+r3eLsH7J5msKa7lQBpGhMX518N1Xf9X8AW1Bb
	EmCqN33h7z1yI1TQed5ugcquRq+j1I6xWLWAxAIiMzZUu/as1xL1wO8WlD+aEB0gEuS3QgDbFk7H0
	CdSlsHkma45FrFbZ8kCLFC7nnQA7mdOswCYemMl1w38CaDzp9yG3k5VqZ71LrAGe6F8+uQFNxllI+
	lwuCFFdxcaHhsshCzsAqYG4Q/p3l/3QeCBrEL/4ot8kli0ZCtw0oLgKNv7mAJQODgJkOnm9WebsFl
	ZMc/3GgydRTs78MmEiKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs9Um-0002tr-80; Mon, 29 Jul 2019 17:31:36 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs9UZ-0002tE-Ha
 for linux-nvme@lists.infradead.org; Mon, 29 Jul 2019 17:31:25 +0000
Received: by mail-pg1-x543.google.com with SMTP id f5so19780714pgu.5
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 10:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=osandov-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XTU4jRerq/5+h399trMmv4Ll69fbgOnjk4FnYnMBLQs=;
 b=pqvS3I5S/MUYoz0vTEsWXVc8IXND5rbU8xNP8RmeWxMxf1asxg7XhLhw4edcO+7dyp
 0uuIu74WXpYdZz47CevQ8XihOIhX4T3f4fUeSl9HUAPA7PKPXHN/bPig8eJQLuLmiwkp
 B40RptpRr3vVg+TrIto1ynNyhWwiejqRGx2FCRB7m8iuKMcrEGYJ2j8+LDaQmnpi75TH
 O+fHcm69+HmU/z3ETD2BKkJ5HWTv441osdWESjqk19ng3JF+vc9P5GX+NrE6cqvjmiHq
 uhIULj6hkGezgMgkXmGqPFIH0CVVo4qSB2EEtKDo0lStEf6cadMXPYsttCM3LbW8/zdw
 Wt0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XTU4jRerq/5+h399trMmv4Ll69fbgOnjk4FnYnMBLQs=;
 b=M7eR4UEvlUAb/FWFBKoKKpVtWRAymnPD49UhvSeMKXShDUJTFtU7J9CMcTSG1dCJdk
 ItjGMgRPx4xHjqEPMq45//XEiUAQFwb6LBYxInIYpDrze5Z3Fq39qs57GuK+yRJF+fMp
 AgsbdINHwK9/FMUJWE4SOVilWCpMWCtTNNF+A3jLpJXLubcrdHO+REZDj9mG2QTatls8
 yUuIbD1M5R8m2AU6mILrot3liXmn5nyBxWMpI+wupuyZL9CIrRARQhC962NSOFljBo/k
 MziVEjLMXjThPaFUymITGD//gIhtFzbki99VTGm+TAwYMoNEZv+yiIFF1DNBVw+bHH/E
 /tRw==
X-Gm-Message-State: APjAAAU9TwHTOf43C/QhtNu9Oay7wbMF8mHBFbfof/+FtWK6N47moMXy
 ZiSsQ6YrbIIsm8LA9c093NhVvg==
X-Google-Smtp-Source: APXvYqwUYO8gIkuJjYG6aVYcHXZCkrMyfGst33ED4xkIj6h5fh3FaJRupbt0Pk7bS31IgT5IEDY3ow==
X-Received: by 2002:a17:90a:ab01:: with SMTP id
 m1mr26024965pjq.69.1564421481711; 
 Mon, 29 Jul 2019 10:31:21 -0700 (PDT)
Received: from vader ([2620:10d:c090:200::6d3])
 by smtp.gmail.com with ESMTPSA id p187sm95012485pfg.89.2019.07.29.10.31.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 10:31:20 -0700 (PDT)
Date: Mon, 29 Jul 2019 10:31:19 -0700
From: Omar Sandoval <osandov@osandov.com>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH blktests v2 00/12] Fix nvme block test issues
Message-ID: <20190729173119.GA30186@vader>
References: <20190717171259.3311-1-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717171259.3311-1-logang@deltatee.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_103123_725554_CD973789 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Theodore Ts'o <tytso@mit.edu>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Johannes Thumshirn <jthumshirn@suse.de>,
 Omar Sandoval <osandov@fb.com>, Michael Moese <mmoese@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 11:12:47AM -0600, Logan Gunthorpe wrote:
> Changes since v1:
>  * Use second sed expression instead of another call to grep
>    in _filter_discovery() for Patch 2 (per Omar)
>  * Redirect error output to $FULL in for nvme/018 in Patch 7
>    (Per Johannes)
>  * Rework _have_module_param() in Patch 11 so that it supports
>    cases where the module is not inserted.
> 
> --
> 
> This patchset cleans up a number of issues and pain points
> I've had with getting the nvme blktests to pass and run cleanly.
> 
> The first three patches are meant to fix the Generation Counter
> issue that's been discussed before but hasn't been fixed in months.
> I primarily use a slightly fixed up patch posted by Michael Moese[1]
> but add another patch to properly test the Generation Counter that
> would no longer be tested otherwise.
> 
> I've also taken it a step further to filter out more of the discovery
> information so that we are less fragile against churn and less dependant
> on the version of nvme-cli in use. This should also fix the issue discussed
> in [2].
> 
> Patches 4 through 7 fix a number of smaller issues I've found with
> individual tests.
> 
> Patches 8 through 10 implement a system to ensure the nvme tests
> clean themselves up properly especially when ctrl-c is used to
> interrupt a test (working with the tests before this was a huge
> pain seeing,  when you ctrl-c, you have to either manually clean
> up the nvmet configuration or reboot to get the system in a state
> where it's sane to run the tests again).
> 
> Patches 11 and 12 make some minor changes that allow running the
> tests with the nvme modules built into the kernel.
> 
> With these patches, plus a couple I've sent to the nvme list for the
> kernel, I can consistently pass the entire nvme suite with the
> exception of the lockdep false-positive with nvme/012 that still
> seems to be in a bit of contention[3].
> 
> [1] https://github.com/osandov/blktests/pull/34
> [2] https://lore.kernel.org/linux-block/20190505150611.15776-4-minwoo.im.dev@gmail.com/
> [3] https://lore.kernel.org/lkml/20190214230058.196511-22-bvanassche@acm.org/

Merged, thanks, Logan!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
