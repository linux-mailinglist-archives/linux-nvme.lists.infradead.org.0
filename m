Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E4869F5E
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 01:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EB5/a1BLIuAMwnALqhV/g93j9TpS3FF9cYLolWw7YoY=; b=SwUGwQ2thSRhy1
	0y8LZJCQU2x8RMZAy4uOuS5rrgiTB8nrayW0V7XzU79gkAI+atjkmycfdgspKvGLlfw2t+0g+KSlm
	0m+y9CzdyDOd4toeT+C4xBwdFWKex6tG5rZMPkA6ScYshhn68e7OUqfwPomCq4jK28sx5MK/JjYlJ
	KvLPjW0MzthhVwb1PAjBY34FozJ8Xr0Sav7Jv2OVTAOuf5kswxW4k7ppMkA8YqKiC2STKCjYGTl1/
	wUvASm7m6ufFlv9IwV3Jq4B1RwyFCU6eadQDcDMZStE1moba2wNoVYh9e6RdBPUUoa71ZyFrbSvLU
	R3vVliirW2amX0Z95iLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnAAx-0003P3-41; Mon, 15 Jul 2019 23:14:31 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnAAf-0003Nv-Pk
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 23:14:15 +0000
Received: by mail-pf1-x442.google.com with SMTP id u14so8136623pfn.2
 for <linux-nvme@lists.infradead.org>; Mon, 15 Jul 2019 16:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=osandov-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=43ut9F37IivXr0wxhSuvpD20A53QvajOAoIP5Mv0CjQ=;
 b=zeTj3JVPib1T3f0ZXqdd0HqpMZAQYHa/h66r+rYUuVxZgxiHVPu2ccEEnwklqVElVI
 HgmoIdwmbRVU++b5F6wUPl7FQi7hzM++GrIhg4r0+rTXgQHsE/d1v2o79inOkRhNIf6s
 UD7MhWkcVBZiAM0WQ4TYUQcEvN+sbekHY7p7fhdLQlz1ma3Wt4TziF7HRxQZHycB832I
 vhuqBr3HhXkNB4Xl6NW+GvQm76egSUgFvgV9t8ZnjMqcLShj+VzCKxixAZfCcpyB3fEJ
 NfhjWOGRh0V3YYIQs/TrBeuY14zkyMiG/Q+afeKA92q1sGz4Uc5x+wchvGGnL8Kq/Mq7
 Etuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=43ut9F37IivXr0wxhSuvpD20A53QvajOAoIP5Mv0CjQ=;
 b=FVDu8kfgLkuuAyHWjCPNcv3TBpDYScm8xOWIvJcnl41fgfBSDp6O0SEikviX7O+7ur
 6I//Qnmkb1PiDExPuzSaXMzkg8ceKnpuFJACLAQ4ZFkLnspNRWTZxXxlSq45F/pt7gww
 6fxUlf5mP0g1z3Yh/VYmmlwBZaKZZM/PvMNHs7bpUu90QXwH2oOFarOunWSiPONygdDe
 ifLAWOo3D+fIDi3NVnfXycZz3lxliZ/Xk6PqX5WJ7zs5j08dBwHV98zTGNPc274c4oVg
 o9iTRl5dEaFRrccA9K8NFUM8AKp2cr40gYVXhzWp7M7YhryciTkI1XX2qwjlMD3qPF6x
 EP+Q==
X-Gm-Message-State: APjAAAUVaXkpzWkIzjLRgo7s49j+uuE7lwTqZhrUx40c4Z+HJ1qAxhDQ
 s/hD9SZ8cnJdsQIpDN+MTQPeNw==
X-Google-Smtp-Source: APXvYqzswRPHUBtaK1lClUn8PJIvwZDdw76vBHzPpeT9PhmIGfmTti65pHpW91HCUpx6De6DpJVPLQ==
X-Received: by 2002:a65:6406:: with SMTP id a6mr16141201pgv.393.1563232452725; 
 Mon, 15 Jul 2019 16:14:12 -0700 (PDT)
Received: from vader ([2620:10d:c090:200::2:f4a5])
 by smtp.gmail.com with ESMTPSA id b136sm10956871pfb.73.2019.07.15.16.14.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 16:14:12 -0700 (PDT)
Date: Mon, 15 Jul 2019 16:14:11 -0700
From: Omar Sandoval <osandov@osandov.com>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH blktests 00/12] Fix nvme block test issues
Message-ID: <20190715231411.GB5449@vader>
References: <20190712235742.22646-1-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712235742.22646-1-logang@deltatee.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_161413_840817_B18F1281 
X-CRM114-Status: GOOD (  26.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Fri, Jul 12, 2019 at 05:57:30PM -0600, Logan Gunthorpe wrote:
> Hi,
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
> Thanks,
> 
> Logan
> 
> [1] https://github.com/osandov/blktests/pull/34
> [2] https://lore.kernel.org/linux-block/20190505150611.15776-4-minwoo.im.dev@gmail.com/
> [3] https://lore.kernel.org/lkml/20190214230058.196511-22-bvanassche@acm.org/
> 
> --
> 
> Logan Gunthorpe (11):
>   nvme: More agressively filter the discovery output
>   nvme: Add new test to verify the generation counter
>   nvme/003,004: Add missing calls to nvme disconnect
>   nvme/005: Don't rely on modprobing to set the multipath paramater
>   nvme/015: Ensure the namespace is flushed not the char device
>   nvme/018: Ignore error message generated by nvme read
>   check: Add the ability to call a cleanup function after a test ends
>   nvme: Cleanup modprobe lines into helper functions
>   nvme: Ensure all ports and subsystems are removed on cleanup
>   common: Use sysfs instead of modinfo for _have_module_param()
>   nvme: Ignore errors when removing modules
> 
> Michael Moese (1):
>   Add filter function for nvme discover
> 
>  check              |    9 +
>  common/rc          |   18 +-
>  tests/nvme/002     |   10 +-
>  tests/nvme/002.out | 6003 +-------------------------------------------
>  tests/nvme/003     |    6 +-
>  tests/nvme/003.out |    1 +
>  tests/nvme/004     |    6 +-
>  tests/nvme/004.out |    1 +
>  tests/nvme/005     |   16 +-
>  tests/nvme/006     |    6 +-
>  tests/nvme/007     |    6 +-
>  tests/nvme/008     |    6 +-
>  tests/nvme/009     |    5 +-
>  tests/nvme/010     |    6 +-
>  tests/nvme/011     |    6 +-
>  tests/nvme/012     |    6 +-
>  tests/nvme/013     |    6 +-
>  tests/nvme/014     |    6 +-
>  tests/nvme/015     |    5 +-
>  tests/nvme/016     |    6 +-
>  tests/nvme/016.out |    9 +-
>  tests/nvme/017     |    8 +-
>  tests/nvme/017.out |    9 +-
>  tests/nvme/018     |    8 +-
>  tests/nvme/019     |    6 +-
>  tests/nvme/020     |    5 +-
>  tests/nvme/021     |    6 +-
>  tests/nvme/022     |    6 +-
>  tests/nvme/023     |    6 +-
>  tests/nvme/024     |    6 +-
>  tests/nvme/025     |    6 +-
>  tests/nvme/026     |    6 +-
>  tests/nvme/027     |    6 +-
>  tests/nvme/028     |    6 +-
>  tests/nvme/029     |    6 +-
>  tests/nvme/030     |   72 +
>  tests/nvme/030.out |    2 +
>  tests/nvme/rc      |   64 +
>  38 files changed, 208 insertions(+), 6163 deletions(-)
>  create mode 100755 tests/nvme/030
>  create mode 100644 tests/nvme/030.out

Thanks for cleaning this up! I replied with one nitpick, and besides
that and comments from the other reviewers, I'm happy with it overall
(assuming it passes shellcheck).

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
