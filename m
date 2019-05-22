Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D72268C6
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 19:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiBv/RSFVjOxIUoOfg5XVMoLYhVKhOh45dnnHz1aTMQ=; b=ZfAYlgf9P1D6V+
	Qn53zEPkudPbMwJOBUvyl5I7+leO33/Jb4bJHf2JBznhk0kNLL6+l/ljGwg3ylbGIu9WiqZ7J+9We
	PVakdG9XqMSC6diz4bbUKwZ0zzxxPWHcDyogOFPyxw0TaKfMiaAyl6ekAEdyYDZpRlp+zgbhsoep6
	nehAR7Ti92Qr+PLoguvpC+qkB+qhyzgqkYI/X6yA0vro5oX1T9G2k+dIi1BEHYXcewMqR1EM0ZhnG
	XFtyi1EgWuloNuwUo1sdHhI3TV6BXtc5T0YLGZaqC26WJcVW+QHe+NoWLdhhRfRyxvMiXfws4c1J6
	TLGQ7wLdGv+D0PDqbm5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTUcP-0001pL-SQ; Wed, 22 May 2019 17:01:33 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTUcK-0001oL-Vn
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 17:01:30 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 10:01:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,499,1549958400"; d="scan'208";a="174457774"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 22 May 2019 10:01:26 -0700
Date: Wed, 22 May 2019 10:56:23 -0600
From: Keith Busch <kbusch@kernel.org>
To: Mario.Limonciello@dell.com
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Message-ID: <20190522165623.GA5486@localhost.localdomain>
References: <CAJZ5v0hZSiQuuq2+P+uLd3uE=ruuTW+5DmAdjqcr39=7poUe-g@mail.gmail.com>
 <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
 <20190517090521.GA15509@lst.de>
 <CAJZ5v0iL+ERE4Yy5yO8U2no194sRkvqNZHh5HsZXKvvHbxtk+g@mail.gmail.com>
 <20190517093516.GA17006@lst.de>
 <CAJZ5v0gLqL7GUjwz5F8=9Fc-W2n3FRzbbB2L8udaXgN4Vsd8-Q@mail.gmail.com>
 <D4CDCA72-A3B8-4717-9ED2-A14254C78963@canonical.com>
 <20190522155253.GA29827@lst.de>
 <20190522160221.GB5393@localhost.localdomain>
 <1558542950751.23268@Dell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558542950751.23268@Dell.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_100129_054166_75302DAF 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: sagi@grimberg.me, rafael@kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, kai.heng.feng@canonical.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 04:35:50PM +0000, Mario.Limonciello@dell.com wrote:
> >I've a branch here that I'll send to the mailing list after some testing
> >this afternoon
> 
>  > https://git.kernel.org/pub/scm/linux/kernel/git/kbusch/linux.git/log/?h=nvme-power
> 
> Make sure you do your testing with Rafael's patch that keeps the device in D0 across the
> various suspend steps, I didn't see it obviously on your branch in the last 2 weeks of
> commits.

Sure, I'll test with that fix included in the kernel image, though its
upstream destiny will not be through the nvme tree.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
