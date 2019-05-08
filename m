Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2878E172F4
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 09:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R93m46FCsqQ/GuNmOjXo5XujMVgMnvEPQ7sjY5tn8fg=; b=Laml/1seOBqQCO
	Ie5f954pWhSFfM9ld//ZIEV/+sRbaa6/F9P5MXh1ScnfJp3O+bABA6NAQ3KhhJ6nAskKjO3CtwNhv
	QDvMOmFu0zo2wUxmdRECjKanja4va4ZTpEVajp5BZYmwe+OkdhGmx5NEgauBt/7ERnwQPvSWqI/yx
	rcTHGkqh0vEcCdbkF9xnsxQUxuS8zvDdfi8zB9TwvzxqUEbmsdl/Hl9oSkg9KYupIKWyqo3qe0v6Q
	Ast3NeLrm7HB0MOM9JFDrNwHQw2v94NcJpCAn1y0FkRtELPctbPmiTnHNcywam34jXfeFyHthOtQ6
	WSNhSFmS3NKPXqhDDGFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHQ3-0002N5-EU; Wed, 08 May 2019 07:55:15 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHPt-0001ps-S9
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 07:55:07 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 5A98768B20; Wed,  8 May 2019 09:54:47 +0200 (CEST)
Date: Wed, 8 May 2019 09:54:47 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCHv3 2/2] nvme: validate cntlid during controller
 initialisation
Message-ID: <20190508075447.GB22414@lst.de>
References: <20190503133736.111201-1-hare@suse.de>
 <20190503133736.111201-3-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503133736.111201-3-hare@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_005506_102953_ED8EDC1C 
X-CRM114-Status: UNSURE (   5.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This does two a little pointless iterations over the cntl list.

I'll send out a quick untested series to show how this might be
done better.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
