Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86BA180595
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 18:54:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OC4sYSxTj+Wl7F9nAEAwzQNX5s7ft6U5UA0hkFIYWhM=; b=nbm55tHBxj3tEn
	QcRMB7W7agr1HLQi3aWFLuJ1yd2mpWQ4IK8By62Qtol/NkncRjrcOcPb1tTd/4sLAt/8xR+awAcN8
	cUm+FC7kfTsxwC+3ZS2s89hed4axqGNENWFOW3oE7zJ7qG8wFI6XvsQ/j6/YRV8KMUyQKDCcQikSw
	LVvGcSfLvNXB5jgrE/CdWTVnJc9AEafbLhJFlvm3KPs9GdJ/zn6J08AsV3jY6HlGgs6Z5kVNWkQGU
	71ZwV6nn49ZCLP2RlogMeo2PYbKallpuF6or/mp8r2nRgLsVyLQuZWGnaNiuzQN1Qf3y7sXfW9B2d
	JZ88nK9XxumTP+nh+C+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBj5V-0002sB-DV; Tue, 10 Mar 2020 17:54:41 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jBj5R-0002s2-Qi; Tue, 10 Mar 2020 17:54:37 +0000
Date: Tue, 10 Mar 2020 10:54:37 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 1/1] nvme/pci: properly print controller address
Message-ID: <20200310175437.GB9203@infradead.org>
References: <20200309150412.63297-1-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309150412.63297-1-maxg@mellanox.com>
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
Cc: kbusch@kernel.org, sagi@grimberg.me, linux-nvme@lists.infradead.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 05:04:12PM +0200, Max Gurtovoy wrote:
> Align PCI address print with fabrics address that is printed with
> newline character.

Should be nvme-pci: in the subject.  Otherwie looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
