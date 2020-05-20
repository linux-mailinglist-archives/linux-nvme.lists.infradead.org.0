Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B16901DBB01
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 19:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3uHRK5HjzivoaGfZtRVmteTwWUjEmmHJsduwRHxtp0=; b=RKLq083bpSEw+7
	oM8CkGxGFm7OWtw1mMUnRbUGz8qucLIyXAiyr3WO/5Z5Bwhe9ooXfjbkqCUm3tLTolaRKW8svzYHh
	HYeQ6r3TUi01YwK61xdoKcIe/V+dRUp8uJBbMlVNcXIB2VGK+VFXnU1hJmy9iIQwbU2r6tRp+IQCT
	0idEHcPsQjw90sp6aQSp9c8X7OcU3VLygtfbNiHadrNdhxXkGMWYKC9AbRL2Il3+epFKwBd4QXAj7
	CZhi0xRrKh9RTWp/RxaDxZQfeOVXlxllp90vPZMDB7wpVLxPYHApHsv5ZXgu/3YaasCcH/QgmarYh
	n8bn0lTo6EtjK1/4lKIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSMW-0005mk-DR; Wed, 20 May 2020 17:18:36 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jbSMT-0005mR-3O; Wed, 20 May 2020 17:18:33 +0000
Date: Wed, 20 May 2020 10:18:33 -0700
From: Christoph Hellwig <hch@infradead.org>
To: David Milburn <dmilburn@redhat.com>
Subject: Re: [PATCH v2 1/2] nvmet: check command slot before pulling and
 freeing aen
Message-ID: <20200520171833.GA22182@infradead.org>
References: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
 <1589828396-144513-2-git-send-email-dmilburn@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589828396-144513-2-git-send-email-dmilburn@redhat.com>
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
Cc: hch@infradead.org, dwagner@suse.de, chaitanya.kulkarni@wdc.com,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 01:59:55PM -0500, David Milburn wrote:
> Free aens while completing requests in nvmet_async_events_process().
> 
> Based-on-a-patch-by: Christoph Hellwig <hch@infradead.org>
> Tested-by: Yi Zhang <yi.zhang@redhat.com>
> Signed-off-by: David Milburn <dmilburn@redhat.com>

Applied to nvme-5.8.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
