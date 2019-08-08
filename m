Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D5B86DBA
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 01:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrfEW+27soyasM4ZgcQHKh9tc5nD9woiuKwj3OQkLSk=; b=jvjIEa5iLPZbEn
	ARVCKzp6s9pO4x4KUv9tTOjB+DQb5Lr/eKOrjye5M2EiRkzJzs3//aUmWtXedXa0FadGIq5Kan9oz
	zcBeJa9c9vJFl9A/SG5mmDgnwyD4gXHEjOpAZwBNJlbxu1dyKIMs/bI+21uRodewq5J0yCzx5CvVJ
	FaIJKz/5koENAgJwahCU/irr/GUAgunqDCZi0Eyq+o1du7DCtKN8dT3Rb9NBDYz/JvgcKxVVAA6J5
	t4sLC6ekLFMKsZOF6k7F048igiUWV4SoSrlSFp3019SlK+WTIk8XVEH4N42BSi6y5rD+vEQ7WJO4E
	sg126NqMV+6TZ2ekwFoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvrYo-0004ab-4v; Thu, 08 Aug 2019 23:11:06 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvrYj-0004aF-3R
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 23:11:02 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 16:11:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,363,1559545200"; d="scan'208";a="169142712"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 08 Aug 2019 16:10:59 -0700
Date: Thu, 8 Aug 2019 17:08:35 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Derrick, Jonathan" <jonathan.derrick@intel.com>
Subject: Re: [PATCH] genirq/affinity: report extra vectors on uneven nodes
Message-ID: <20190808230835.GB27570@localhost.localdomain>
References: <20190807201051.32662-1-jonathan.derrick@intel.com>
 <alpine.DEB.2.21.1908080903360.2882@nanos.tec.linutronix.de>
 <20190808163224.GB27077@localhost.localdomain>
 <1a6ab898b8800c3e660054f77ac81bfc3921d45a.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a6ab898b8800c3e660054f77ac81bfc3921d45a.camel@intel.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_161102_200876_AEFA96B2 
X-CRM114-Status: GOOD (  14.10  )
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "hch@lst.de" <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "ming.lei@redhat.com" <ming.lei@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 10:46:06PM +0000, Derrick, Jonathan wrote:
> On Thu, 2019-08-08 at 10:32 -0600, Keith Busch wrote:
> > 
> > I think the real problem is the spread's vecs_per_node doesn't account
> > which nodes contribute more CPUs than others. For example:
> > 
> >   Node 0 has 32 CPUs
> >   Node 1 has 8 CPUs
> >   Assign 32 vectors
> > 
> > The current algorithm assigns 16 vectors to node 0 because vecs_per_node
> > is calculated as 32 vectors / 2 nodes on the first iteration. The
> > subsequent iteration for node 1 gets 8 vectors because it has only 8
> > CPUs, leaving 8 vectors unassigned.
> > 
> > A more fair spread would give node 0 the remaining 8 vectors. This
> > optimization, however, is a bit more complex than the current algorithm,
> > which is probably why it wasn't done, so I think the warning should just
> > be removed.
> 
> It does get a bit complex for the rare scenario in this case
> Maybe just an informational warning rather than a stackdumping warning

I think the easiest way to ensure all vectors are assigned is iterate
the nodes in a sorted order from fewest CPUs to most. That should fix
the warning, though it may not have the best possible assignment ratio
(but better than what we're currently doing).

Unfortunately the kernel's sort() doesn't take a 'void *priv' for the
compare callback, so we wouldn't have all the information needed to weigh
each node, but maybe we can fix that if there's agreement to iterate
the nodes this way.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
