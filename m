Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B8463D33
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 23:20:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8oRq/0hNwKGvVEJB9X6GsjkwQplmVihfddoiQy04oMc=; b=assA+jeUzsRSRn
	jNXpcOR/Wv9yUt/R5F2l83Z8K0eOH3FjIMmpnaBHU/wopwuO5uSYlVXO1X/9m82qwr6E9tJnqbuKP
	CcdZi7ipH+z6Sk/XifmpTXeWf3t/eYuskaNrOtWe5oGjJ7V60tPZIJz1CkWFmgexz3Z4hTRlFIwtP
	hKwq8BAvBKC2/mpZrDkQ3RZschXgOZNSqO99ZSeVD7D3ztZc2Qh8MtwstD08BjQZ4gulVQ891O6xW
	rbmSBsF/mIemcV/QUEOUAdq5Qk4SZ7lSRG6v0qtNF2VLA+kSxCtKwcJWoNOTiDu7oAzSu3lDnoXYk
	9lpbQdzwdPZ1FrYI+FZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxWm-0005Gq-6x; Tue, 09 Jul 2019 21:19:56 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxWf-0005GZ-5S
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 21:19:50 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3A6CB68B02; Tue,  9 Jul 2019 23:19:47 +0200 (CEST)
Date: Tue, 9 Jul 2019 23:19:47 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCHv2 0/2] nvme-multipath: path selection fixes
Message-ID: <20190709211947.GA9518@lst.de>
References: <20190704061047.94976-1-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704061047.94976-1-hare@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_141949_353628_A69D78D8 
X-CRM114-Status: UNSURE (   5.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

I've split out the addition of the new nvme_path_is_disabled helper into
a separate patch and then applied there series to the nvme-5.3 branch.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
