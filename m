Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7A96A50B
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 11:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7mJVQvcrQZInSEtjn1AjCfgHSYePRRqARTFsSoE0YPk=; b=OqCcYNL+hBwZ7j
	pyfzkZhFFnVyO2+g+C2SZ7cDEbqjFpPkQe81R9Kzz3vSlC8MNi8OCpfjizDkJQdBMw+inHHL1+fRA
	ElrthwLwOsrP1Y8rhGkmUQUKyYAu3E/goZmzT4blt/nxq83LQa3we9RA6X33/05Nk6oHHYyUU3mVo
	3FqXycw4QXUFsaoMx8Mzx4tXmrG7wHQEJrNlK9lOrYZ9vk8UccT/k1T7WC+2u1B5fg7+TaC1xxZ5W
	p1D0bhAJnAMvYDBxjuBNJq7jDvc0tyDDkLhbd9+yvHfIVxkklgBKvd2TAyi+o/jdOyPr+0zdnYwuG
	IPxZcaoPIuI/BnQD+PIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJuv-0003WS-76; Tue, 16 Jul 2019 09:38:37 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJum-0003Vw-7z
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 09:38:29 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9785168B05; Tue, 16 Jul 2019 11:38:25 +0200 (CEST)
Date: Tue, 16 Jul 2019 11:38:25 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH] nvme-multipath: sanitize nvme_update_ana_state()
Message-ID: <20190716093825.GC32562@lst.de>
References: <20190716071830.22672-1-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716071830.22672-1-hare@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_023828_437728_C50F724C 
X-CRM114-Status: GOOD (  10.64  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 09:18:30AM +0200, Hannes Reinecke wrote:
> Commit 04e70bd4a026 ("nvme-multipath: do not select namespaces
> which are about to be removed") introduced checks when traversing
> the list of namespaces to avoid tripping over invalid namespaces.
> A similar check is needed in nvme_update_ana_state() to skip updates
> for any namespaces which will be removed.
> With that we should also remove the WARN_ON() at the end of the
> iteration; this will also be errorneously triggered if ANA Change AENS
> are received during scanning.

What is the problem we are trying to fix here?  Just that we should
not call nvme_mpath_set_live?  In that case it might make more sense
to move the removed check to just guard that call and at least keep
the values in struct nvme_ns uptodate.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
