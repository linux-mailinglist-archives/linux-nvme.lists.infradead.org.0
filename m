Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D9B59496
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 09:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrRf1EiDxCAy1YPTyzXapQtaH8pmM56lJcoHwM1Ul54=; b=HYiX7NAnGUBVlp
	O8GbdZXJEIWBZeHOqCaE+6T3+zYka3QztkSY+/vRGCOuQ+tlJKQn42mLaG7RlcNKDhOI1hXKFaOdz
	mkcK0+/+GFULe0zKpMs2DUZwVrBQkYLdYAQ4Yb7Ae38/UIEs2jD4yhpWHV0NVvoiDuGLuTu+MkO5o
	lG5xZDvyFt9Ds6OzwfYJ5W+hUkhSmILXXj/FIIs9yiG1YvmV4k8wM9AKoRu5dMeWMfF3u0FDjV7Kr
	cQ55uQxwOt6dPRamzYqWPeTYwi7O4GZhaAv8CNH7EhTvHBraLoBT27Ll+fQtxU6YJgPw4MG+GqRl9
	aBV9q/NpvDIsVRA99L6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgl0j-0002Qu-U6; Fri, 28 Jun 2019 07:09:30 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hgl0D-0002QN-TP; Fri, 28 Jun 2019 07:08:57 +0000
Date: Fri, 28 Jun 2019 00:08:57 -0700
From: Christoph Hellwig <hch@infradead.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme-fcloop: Fix inconsistent lock state warnings
Message-ID: <20190628070857.GB22770@infradead.org>
References: <20190620200700.15659-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620200700.15659-1-jsmart2021@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks,

applied to nvme-5.3.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
