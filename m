Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131346A2BC
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 09:17:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QT90sWedzpBhToCN6jy7xTd8laLlJpHd7w02G2DAUXI=; b=nr/JiwTBIWHl+k
	frkqvGE7hDJtO9ywwXfDCfErCgp4poR25KLgvBi7XR3ctWKxv8AgVwt2UelfUlHXtyspOMSSWnx3d
	cYWbJi3qSn7tXe2sJuYhecccJBCjgzF8dGB5pTjDoAPiXSAC39j0bRpvJRkj5CsIs0CH31+6Xe4Tm
	baDyBRRpyyD19NoJdMnLrnAbFZmsHHwYB0Ou7IhZcmH615FEy0i7AuqtqNAdCxwXmu6P19KVAg8qQ
	/pJUeYI4fKaFqqaW2SEt78ywYN38XPoo6u3q02k2jirUbbmqx0rKePMfWkS1JUKFBNeBztIvHafoM
	M5+dnyAteIFoe2AoVaUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHiL-0005AB-RI; Tue, 16 Jul 2019 07:17:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHiA-00059a-Me
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 07:17:20 +0000
Received: from localhost (unknown [113.157.217.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70B5520880;
 Tue, 16 Jul 2019 07:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563261437;
 bh=ivmkYK87VvmWfwPxJ42xkGY8yxoOqLZyFPSJsjyYH8g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PdYkRnKFI8BpFImebLmZjpoYxZvey+sR4PqUZI45mlNqCICAp8KEdn9O9jC6nURVf
 3nWumJTDL8jd2+pbS2SFBcfr+YJxfdD5UVUU23Ml6Ojqzb4BAnKsD/OI6sVfw4GGVR
 c0FdnfV0ov755dlSVXxGJ7BCa1KPibpctfO3dsyE=
Date: Tue, 16 Jul 2019 16:16:44 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Leon Romanovsky <leon@kernel.org>
Subject: Re: [PATCH for-rc] RDMA/bnxt_re: Honor vlan_id in GID entry comparison
Message-ID: <20190716071644.GA21780@kroah.com>
References: <20190715091913.15726-1-selvin.xavier@broadcom.com>
 <20190716071030.GH10130@mtr-leonro.mtl.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716071030.GH10130@mtr-leonro.mtl.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_001718_755318_C9F72D53 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Selvin Xavier <selvin.xavier@broadcom.com>,
 Parav Pandit <parav@mellanox.com>, linux-rdma@vger.kernel.org,
 stable@vger.kernel.org, jgg@ziepe.ca, dledford@redhat.com,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 10:10:30AM +0300, Leon Romanovsky wrote:
> On Mon, Jul 15, 2019 at 05:19:13AM -0400, Selvin Xavier wrote:
> > GID entry consist of GID, vlan, netdev and smac.
> > Extend GID duplicate check companions to consider vlan_id as well
> > to support IPv6 VLAN based link local addresses. Introduce
> > a new structure (bnxt_qplib_gid_info) to hold gid and vlan_id information.
> >
> > The issue is discussed in the following thread
> > https://www.spinics.net/lists/linux-rdma/msg81594.html
> >
> > Fixes: 823b23da7113 ("IB/core: Allow vlan link local address based RoCE GIDs")
> > Cc: <stable@vger.kernel.org> # v5.2+
> > Reported-by: Yi Zhang <yi.zhang@redhat.com>
> 
> > Co-developed-by: Parav Pandit <parav@mellanox.com>
> > Signed-off-by: Parav Pandit <parav@mellanox.com>
> 
> I never understood why bad habits are so stinky.
> 
> Can you please explain us what does it mean Co-developed-by and
> Signed-off-by of the same person in the same patch?

See Documentation/process/submitting-patches.rst for what that tag
means.

thanks,

greg k-h

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
