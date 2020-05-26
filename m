Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8857B1B3981
	for <lists+linux-nvme@lfdr.de>; Wed, 22 Apr 2020 09:57:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hrAOlqY8IVkDdYFIAGiQ7dU0jn7aHY5sCDASijPYlU=; b=g1KTC+bWueGkJ2
	4ieMmDcgXkwoI7XpqCpC4eoOiQK6sDJmU1cFbIgJkhOlixbaQIVpmbkUZXIUJeqGWm0v3Y5vanahF
	1f88uBqv6+gx38QVp69Puf20di7MfoQ6pxOdYUg0Mx8fTtQjaz7MjKxFCiwAQT9vlQqrE+alpAzfl
	nwBVNynSG1jG+ZltS4HGvYhw3UdbcrTapiMyDMcFx1JCQpCcS0z78sh/X1NQ0+6z0Ap6ABGXoQ4Mg
	NaDt3vTury6jjaNs13k+dRISqnaUC9ygbzzuz1t7EuA5SwDJGEZ6BKQMEJZalDqiWfh2chWmvTOln
	afZv6ltrssNwek1ELhbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRAFb-0006rC-Es; Wed, 22 Apr 2020 07:56:55 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRAFW-0006qN-8a
 for linux-nvme@lists.infradead.org; Wed, 22 Apr 2020 07:56:51 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id EE8DA68C4E; Wed, 22 Apr 2020 09:56:46 +0200 (CEST)
Date: Wed, 22 Apr 2020 09:56:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 00/10] namespace settings updates
Message-ID: <20200422075646.GA24544@lst.de>
References: <20200409160908.1889471-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409160908.1889471-1-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_005650_444197_E8FDB1B6 
X-CRM114-Status: UNSURE (   6.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

I've applied all but patch 5, for which Sagi had a question.

I'll send a separate patch to address the cleanups Sagi suggested for
patch 3.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
