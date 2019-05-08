Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5C71725A
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 09:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+pEL6tpAIOkxW52qMawJRRcfAofLT65Bo4lBKgtU0c=; b=c/Ttrmu5R01qc+
	DcVSwJCIkSTiqDqPCEmnrQC5N9YXPdkGDva7JDFG17INSuFgz+vwxGnPLRg9fX9s9IlIPKO4PMau9
	0yhNYOqICyjhfYcGb/ILgV/Ab9vjPXpnGExPxRLfjTZqDctHpQh7pTANevsglIX1pphVxzzDS0M3s
	k6Iv/hgh/cQJS8LupGx5OLg4W34QHPk1vP0hhJQnUYKmbIWtEnO5crRgQ0Qy+6L+fst6rHBJreVnT
	jUusWR40kynqxrN7Wg1kM12gesVd7gpwi4InLGFsK8dweYM76QqvnclbRE8dCS9d0OJzz5RqtmNDY
	VRrOfmA46zyTr1661uqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGjI-0001Es-MG; Wed, 08 May 2019 07:11:04 +0000
Received: from 089144210233.atnat0019.highway.a1.net ([89.144.210.233]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGjD-0001EI-65; Wed, 08 May 2019 07:10:59 +0000
Date: Wed, 8 May 2019 09:10:18 +0200
From: Christoph Hellwig <hch@infradead.org>
To: Maxim Levitsky <mlevitsk@redhat.com>
Subject: Re: [PATCH 0/2] Few NVME fixes
Message-ID: <20190508071018.GA21085@infradead.org>
References: <20190502113134.20835-1-mlevitsk@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502113134.20835-1-mlevitsk@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied both patches to nvme-5.2.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
