Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F12419D043
	for <lists+linux-nvme@lfdr.de>; Fri,  3 Apr 2020 08:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVN8L3bGg6TE+jIdacYy+vrgRyffFrLX24+PSIovwxA=; b=G941rJDslKiVgT
	2cNx/7n9+vNxChkznNIx+JzjXRhoMj+M2T6FiUuvLmQv4xiuLM0GNxbV3z4ak4FUW4alKtFcwW7ME
	E9vqegYgvknFUAMOy8fCK1jpEUFgDglnfFZs6u+m4wZJw3JcaauCqQUDkJrV/HRgIt2OdTnGMhJ6+
	qyragUVvU6MMAZ4FM1kpOD4DqrXMinGEqL9Gdnlu6ExiN1l7ZRE49h55QF56SGVuD8tLTq2jRJpKT
	UxAHA9XaQv4CiyTlAbNQrDfkcqyQzLE+jpfPNwL5YHgIs9vpjbYxvin7/DWSBnYesCujvqYLh1dS2
	HvQXNe8YbrkNbYc80nGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKFvU-0006xk-9U; Fri, 03 Apr 2020 06:35:36 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKFvP-0006x3-Qg
 for linux-nvme@lists.infradead.org; Fri, 03 Apr 2020 06:35:33 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AB83F68B05; Fri,  3 Apr 2020 08:35:28 +0200 (CEST)
Date: Fri, 3 Apr 2020 08:35:28 +0200
From: Christoph Hellwig <hch@lst.de>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme-fc: revert controller references on lldd module
Message-ID: <20200403063528.GA23224@lst.de>
References: <20200402190312.88868-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402190312.88868-1-jsmart2021@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_233532_017204_9BE935CA 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Keith Busch <kbusch@kernel.org>,
 Himanshu Madhani <himanshu.madhani@oracle.com>, stable@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 12:03:12PM -0700, James Smart wrote:
> This patch partially reverts the commit for
>   nvme_fc: add module to ops template to allow module references
> 
> The original patch:
>   Added an ops parameter of "module" to be set by the lldd, and the
>     lldds were updated to provide their value.
>   Used the parameter to take module references when a controller was
>     created or terminated.
> 
> The original patch was to resolve the lldd being able to be unloaded
> while being used to talk to the boot device of the system. However, the
> end result of the original patch is that any driver unload while a nvme
> controller is live via the lldd is not being prohibited. Given the module
> reference, the module teardown routine can't be called, thus there's no
> way, other than manual actions to terminate the controllers.
> 
> This patch reverts the portion of the patch that takes module references
> on controller creation. It leaves the module parameter so that it could
> be used in the future.

Please remove it entirely - we don't want to keep dead code around.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
