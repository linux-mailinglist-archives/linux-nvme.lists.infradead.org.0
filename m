Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D5621A5F
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 17:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7R/OhPL1adZwws3hsY0Z4C2jmQGXoER3i6l3GzfI+o=; b=azWx4WI3k16HB9
	dD8EqeK/ymyl3JJ5/XmHnr+9HiGxRqexNZdWwmr0APw+tUXh7s9tOp4h4fpcM3BAEhK2wWjpz5Nh3
	8eUUcYytWVvmpPEfzQhC4e3vZesPtsurQBOoR5rpZD+n9y6u9t5EcQh9gdVB1OSyuHGoykJwSULei
	Qn0/q/QSMYQkKlFMHRbziWGWqDM5zuZFcBurmI7hk6XKK9lU3BkH2boCWF3ZmjyjclAs6TBLWFGmO
	I760+ZudibF6tM+5yjgkgCJ/oLRWMlCAXj5y44IAmUdvqptDxQkBwmeNLb3CLPA5PPu0VnZmODA3C
	LySftQxfV21JNk+0kdzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReZM-0007cM-PE; Fri, 17 May 2019 15:14:48 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hReZI-0007bz-3g
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 15:14:45 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 08:14:39 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga005.jf.intel.com with ESMTP; 17 May 2019 08:14:37 -0700
Date: Fri, 17 May 2019 09:09:25 -0600
From: Keith Busch <kbusch@kernel.org>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
Message-ID: <20190517150924.GA25006@localhost.localdomain>
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
 <2bf1e2cf-b922-d947-c939-375aba75994d@intel.com>
 <CAC5umygRTpq3GktaMKBdC8+-ghkJKCzFME+rm+V6vasrOAyOPw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umygRTpq3GktaMKBdC8+-ghkJKCzFME+rm+V6vasrOAyOPw@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_081444_156386_DED62347 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-pm@vger.kernel.org, "Heitke, Kenneth" <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, May 18, 2019 at 12:01:57AM +0900, Akinobu Mita wrote:
> 
> This is work_struct, not workqueue.  So it can't be destroyed.
> But I noticed that we should call flush_work for thermal_work at
> unregistering thermal zone devices.

Instead of creating yet-another-work_struct, let's append this event's
action to the existing async_event_work.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
