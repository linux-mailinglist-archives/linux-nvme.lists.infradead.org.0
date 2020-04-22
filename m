Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A668E1B39EC
	for <lists+linux-nvme@lfdr.de>; Wed, 22 Apr 2020 10:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfEJpzNxo9SVgvJjl5jS++1vn254YOxfWR2wXWM0vlk=; b=Go4gUFJttFSYMi
	a1PSKX0EdXbwHTEqYZ9XGmg+5+j1VqzmsfPs8D8dL8eMwGyhwWZMBpIa9aGhdRqUdeL2/xiuCDd35
	B7QwqnFAPsHnF3CCdh1XvpOQTL/g3By/MmDjt4v+jUQguijEB4hhHRP1YXZddypl0HAKjJYZsL90I
	a3LjWm6f23vjf1BnUd3MAnGswCyJERUsy/kltz+R6x749G3xA93Pu9G/I+QKu+oAJXF9XrpOEV0gA
	+o4QOAee7yCG8mEjyBxOLpJ6JUFyMWgq/h7jq2Ea95qH0QEW5iH/Qr27Rw5YUq1kGXVCPGk2BwAif
	tYLDBQpVWT7YsnxlAPGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRAbg-00055z-Os; Wed, 22 Apr 2020 08:19:44 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRAbb-00052w-Lu
 for linux-nvme@lists.infradead.org; Wed, 22 Apr 2020 08:19:40 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 06EDD68C4E; Wed, 22 Apr 2020 10:19:37 +0200 (CEST)
Date: Wed, 22 Apr 2020 10:19:36 +0200
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH V3 0/7] nvmet: add target ns revalidate support
Message-ID: <20200422081936.GA25035@lst.de>
References: <20200419234856.59901-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419234856.59901-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_011939_880851_EFF0224C 
X-CRM114-Status: UNSURE (   6.77  )
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Patch one looks obviously sane to me, but the whole polling thread
thing just seems like a lot of overhead, and I don't really see
the point.  In the end the revalidate only really matters when
either the host queries the information.

So I'm tempted to just apply patch 1 for now and skip the rest.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
