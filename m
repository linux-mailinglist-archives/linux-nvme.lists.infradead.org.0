Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E163901E8
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 14:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bjvn0l/XDAPCKfpS0/jUkXmadQ25Ekouy7rne+NVWm4=; b=drOPyGfE8QuYWK
	UyQBH2wMnQZ3RS0QHMTZNDINVdUtMRS7SArrYp4fK4PLheRhWwcZI1Uha/cdciGvXELi61lpW1POq
	luNx5NoavF0KABytlom/crlfgKC3Jfn+mWHHx5OZjtvgJukOlAP2M32/I4weR3w26852ok5Rf/a37
	iY7mr11MXkh7JS7dxtlCUg5q3T7Gcm5ZCdcRnKkGnsORR5195pMeODcSIcyoj2G9pX8iZ1JaLWG9a
	aZYaxi7qeKbXbPp+X9oVCSkZTJkHSTAkgusb8C82xvLOmPbs6XDhbru5PVsIrccZ11sJ9FFoPPSVj
	pAbTg5g2LERNwu3/92rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybdG-0001fI-EV; Fri, 16 Aug 2019 12:47:02 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hybd8-0001ev-TS
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 12:46:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id p77so3122316wme.0
 for <linux-nvme@lists.infradead.org>; Fri, 16 Aug 2019 05:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kOKVpWFhqA7qX1a90D84hBsVtR6avaUHqQm1L3LOuSI=;
 b=SnnXfiEDB2MRlx69gOxwFOjZQno2Ja8FF9l5Ywefb4He8UK8QbfBlAO4WhUazXzXG1
 HB7KyT6iEWjnGbLxIMrwvLjD7P91RWj1fk9otPj4E4slyW543EpFXHz5TMsYkEwiEBkp
 VymCO+F3WfAJvGlPTAzADDKnueovJFJNnJSiuMuSR6yI+Y6LcwHhOVhsRQaekaKh5gKC
 8hy8kQvQfZLDMO7l6cS3T9tKHYnE3l5PWc/3HnNudMQUJKsZIb9yaGR0Mrq2w8WpDbUV
 HHlqo0Nc/DtFluG/g7ZAppiWu8BhqHBw+jcZyxVu8CkaencQE4l4+tiyU7zcWuUAk0Sj
 lZRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kOKVpWFhqA7qX1a90D84hBsVtR6avaUHqQm1L3LOuSI=;
 b=dguiU3nRzR8GlbulkzXmSkk152urh7eoRet7bZGRB9QIx5ivZZDWF3C3jlixrfG7D5
 G7/wUQh/XwLbZFXT7fWZedUlyBmqSIjKOy3hL7UwTAQGC3nEUIuZBpGRLHhkgo+kGqn9
 UTnAIiQX7dA2FW84YqyykoeufdHjnjLhvWK9Q8OZ94s63yVo8DCYaDZOCUB6+ZlOptfN
 T/kG9lYu6fnjUZ9DaIVZWWOOCVzvVoYztDSMkgon+aqAJFEN7cPgoqFfGBcf6v9YWug4
 n+NfQfDPiY4mFmuLkQWo0PNPLUmJnRaPkcvPmJsrGiq180V+yXKbLdO/s4NnIRgHUMK8
 VSQg==
X-Gm-Message-State: APjAAAXVik7ygb4pjAPoLdlp4yf02wLsvv/XIkJEdYNnxYkcpdrg35L8
 Q1L/zl/g6OQZi8gayP/DrhmZ9nShz4Rl8VNCM56savjdgOQ=
X-Google-Smtp-Source: APXvYqxjZCN+1bN9L24DUHRUKoqSP9S8VZsjtzfDLzaMtPx6dYfgUBwq+xCtUgfbz+Q9djcsP4RKbgp5MPAK49AufHo=
X-Received: by 2002:a1c:6c0d:: with SMTP id h13mr6701409wmc.74.1565959612871; 
 Fri, 16 Aug 2019 05:46:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190816121549.8754-1-chris@chris-wilson.co.uk>
 <20190816122644.GA21797@lst.de>
 <156595862897.11610.6852982219615959799@skylake-alporthouse-com>
 <20190816123850.GA22923@lst.de>
In-Reply-To: <20190816123850.GA22923@lst.de>
From: Keith Busch <keith.busch@gmail.com>
Date: Fri, 16 Aug 2019 06:46:41 -0600
Message-ID: <CAOSXXT54LyxmF7sAgfxYr7G_vnvDjhiEiHnVm7Zrm1vjS7zLQA@mail.gmail.com>
Subject: Re: [PATCH] Revert "nvme-pci: use host managed power state for
 suspend"
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_054654_973436_64C449E4 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 intel-gfx@lists.freedesktop.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 6:38 AM Christoph Hellwig <hch@lst.de> wrote:
> On Fri, Aug 16, 2019 at 01:30:29PM +0100, Chris Wilson wrote:
> > Quoting Christoph Hellwig (2019-08-16 13:26:44)
> > > Please, report the actual problem.  Blindly reverting a patch without
> > > even an explanation of your regressions is not the way to do it.
> >
> > As stated, the system doesn't suspend.
> >
> > If you would like to wait, you will get test results from our CI
> > giving the current failed state and the outcome of the patch.
>
> Platform type, SSD vendor and type, firmware version?

Also not a fan of knee-jerk reverts. Even if it may turn out to be
necessary, let's at least start with a bug report for an opportunity
to fix first!

Could you please try Rafael's solution? These two commits here:

https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?h=xps13-9380-20190812&id=accd2dd72c8f087441d725dd916688171519e4e6
https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?h=xps13-9380-20190812&id=4eaefe8c621c6195c91044396ed8060c179f7aae

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
