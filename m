Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDB320B4C
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 17:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yOUs+3+GCkNEnf3QIXhMLWnPYXSOaDcFMyCQUZqGSuI=; b=JOSoSXQ2QgmRvZ
	ix+HWZbcFSPQRp12cmYVA8mFIkgoph+UP3PjYhJAMdfy1Titc129pUl+JZi2OeJNtm7PxB7DR3b0k
	E01dQyK1TXqJbi10veWJR3nGoY8EQjni3yi8FZnLFvJJyiACicuuuLQipJ8Ok6VM7ufm0DnvoJowd
	XqjRzhDdFNsLGr6tkX2V1Yqwz6ylHVBjIWrxMFrIP4l4uL63VUhIxDW4D2ByaRiQPlYkjdVAluvWP
	8BS4uQtjE+g5k3gshezskX9SXE2oFEvuO92V6m/TNDz5ct/7ozfkgeAyClKO1mn8Nj+a8jGyqEpv4
	TM5BPkTGd9m92CC8hD8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIME-0005cg-Hg; Thu, 16 May 2019 15:31:46 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIM7-0005bS-Ui
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 15:31:41 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 08:31:38 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga004.fm.intel.com with ESMTP; 16 May 2019 08:31:38 -0700
Date: Thu, 16 May 2019 09:26:23 -0600
From: Keith Busch <kbusch@kernel.org>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
Message-ID: <20190516152622.GC23416@localhost.localdomain>
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
 <20190515191518.GA21916@localhost.localdomain>
 <CAC5umyhh7eNHa4D9sndsoB7EgTJZTEL9OTd=a+7x817XvPZ_eQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC5umyhh7eNHa4D9sndsoB7EgTJZTEL9OTd=a+7x817XvPZ_eQ@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_083140_035863_02161966 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Eduardo Valentin <edubezval@gmail.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-pm@vger.kernel.org, Jens Axboe <axboe@fb.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 12:22:51AM +0900, Akinobu Mita wrote:
> > Since this routine is intended for use in the device initialization path,
> > the error returns are extra important. We have used < 0 to indicate we
> > need to abandon initialization because we won't be able communicate with
> > the device if we proceed. Since thermal reporting is not mandatory to
> > manage our controllers, out-of-memory or a device that doesn't support
> > SMART should just return 0. We should only halt init if the controller
> > is unresponsive here.
> 
> Make sense.  I'll change the return type to void, and print warning in
> case of some errors as Minwoo said in other reply.

Oh, still needs to be an 'int' return, but just suppress non-fatal
errors by returning 0. If the 'nvme_get_log' times out, though, we need
to return that error since the caller will need to abort initialization.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
