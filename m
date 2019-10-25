Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1A0E574F
	for <lists+linux-nvme@lfdr.de>; Sat, 26 Oct 2019 01:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GojQBiL5eD+npYxaNTMVdDhtZMlwiwqIM3tnGr1tnYY=; b=T5A4FLMX2e4W+U
	4cp19++gWpAf3F2Zi9dk8lB3mSp1PQSRj2O1OkGlPxxClPIymp+CS0V/9cImVg0VgVwc/Z+FpivC2
	gpczl6oHjW/HTRCfEPyUZ9NR6EWQhAUtBT+AuamheMksne9ztogrFHqmxpgBTpKDx1oBQ9Bo3rZEj
	zc3aW42ljWL01gMP12Al1itdVj/a5/5cmnWEi9SMGdA2E5lYuv+MS8dFWxmbGeggUNCYSNHF7AWWY
	57JU63KmdX0BvDa9oxCv8iPq+vFZsFSJziGnCHwAmm44XSD+2wdPatRArdZmO7rkY5dJrcS92Nc4D
	bjebNMgpSy+2piShlE7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9SZ-0002uY-JX; Fri, 25 Oct 2019 23:57:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9SU-0002u1-JJ
 for linux-nvme@lists.infradead.org; Fri, 25 Oct 2019 23:57:31 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 657DD206E0;
 Fri, 25 Oct 2019 23:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572047849;
 bh=2CXHE3lfOwlO+teDk8DBrklXvC+rcABGR7IR0elYJpA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RF609j8IzcRqEFCtyQfCizyb72apqF22SsOxepOwRWvrv5qVUsAEHgZ7CYbPkYaQ4
 GBZjc5l8Bi5ShKXGopiH0NSAfByU6WYzuft4JrJZZn/u7gkFuR6wK6uqXF5v/hhSUI
 Rvmtds+xutO0wOWe3nMIEeC2w3ecUp0PUWagYHCs=
Date: Sat, 26 Oct 2019 08:57:24 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvmet: clean up command parsing a bit
Message-ID: <20191025235724.GA23826@redsun51.ssa.fujisawa.hgst.com>
References: <20191025133858.21505-1-hch@lst.de>
 <e9af07e4-fd81-fd13-9e95-141f8adfce73@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9af07e4-fd81-fd13-9e95-141f8adfce73@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_165730_660546_7A255E62 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Applied to nvme-5.5, thanks.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
