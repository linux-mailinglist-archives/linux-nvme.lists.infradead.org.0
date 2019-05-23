Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4132813F
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 17:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kF0ReekLhj0Wh/Uec44In5q59f79ppBLQ6JETzo6g8I=; b=LPekBw9YqRZJKh
	X8ScgFkjco9QNZwIRwICQMAT1GaTZLOdCw5m7sEWftSVQTzrkquba/yAsqufzciPsklc+qOOkrHLC
	iToNHrCQ0+D62nkjS8EC7y8L2ER7JeEKsxuaqXiABFrQBz2L0IYPF0qd+Jtwq3uhLaBAJnwqRCMs9
	rXd5T+9sL+UbD8U3ygif4Y4C3lZjwYzkd4Df5LcHriWyWsR4fY58tG21hz+SXEmFC94Pj6TEndkD+
	mnC/1/5F36/Ij4HpNRDc3sj71SpZXep7soklbgnffSf9VDYTxeabX10/j/Lf3HEzOOl7I+55kyeiX
	MyVUhQgZvdvtjS8QEbJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTphe-0007Rm-1G; Thu, 23 May 2019 15:32:22 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTphV-0007Pr-N6
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 15:32:15 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 08:32:12 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 23 May 2019 08:32:12 -0700
Date: Thu, 23 May 2019 09:27:11 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Mario.Limonciello@dell.com" <Mario.Limonciello@dell.com>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Message-ID: <20190523152710.GB14943@localhost.localdomain>
References: <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
 <20190517090521.GA15509@lst.de>
 <CAJZ5v0iL+ERE4Yy5yO8U2no194sRkvqNZHh5HsZXKvvHbxtk+g@mail.gmail.com>
 <20190517093516.GA17006@lst.de>
 <CAJZ5v0gLqL7GUjwz5F8=9Fc-W2n3FRzbbB2L8udaXgN4Vsd8-Q@mail.gmail.com>
 <D4CDCA72-A3B8-4717-9ED2-A14254C78963@canonical.com>
 <20190522155253.GA29827@lst.de>
 <20190522160221.GB5393@localhost.localdomain>
 <1558542950751.23268@Dell.com>
 <20190522230810.GA14049@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522230810.GA14049@localhost.localdomain>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_083213_802707_159B716A 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "rafael@kernel.org" <rafael@kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>,
 "kai.heng.feng@canonical.com" <kai.heng.feng@canonical.com>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 04:08:10PM -0700, Keith Busch wrote:
> On Wed, May 22, 2019 at 04:35:50PM +0000, Mario.Limonciello@dell.com wrote:
> > >I've a branch here that I'll send to the mailing list after some testing
> > >this afternoon
> > 
> >  > https://git.kernel.org/pub/scm/linux/kernel/git/kbusch/linux.git/log/?h=nvme-power
> > 
> > Make sure you do your testing with Rafael's patch that keeps the device in D0 across the
> > various suspend steps, I didn't see it obviously on your branch in the last 2 weeks of
> > commits.
> 
> Well, I may have picked an unlucky rebase point. I can't run the tests,
> but it doesn't look like it has anything to do with the nvme changes. I'll
> go back to my original stable point and try again tomorrow.

Kernel repo was fine, I just had the wrong kconfig that was intended for my
minimal vm's.

Tests are successful now (though still only faking deeper NPSS), posting
new series shortly.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
