Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC0A1C1253
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 14:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzEZFgpP76Sk02iQuuS8c9D6OmAirEkeYRy7+6hAlHY=; b=tNOdGYcCma0JPg
	wTpLFe4Gkv6js9xMb/r5fos+2O/9cpYg8oNnLWr0fdwhnI68xJsrbc0355M2ZhM6MqZ20s1FCV8Ud
	BflV7wm1DkV1x28iYTlBS/R0hCkUSyXntRw3nMTFKGR5aoPd8TdPXojbldkpCDOPrtj+0P+5U5u4r
	l7zqCZM2nWs9DbROazdyvVhQEZ0lK6UBACYhywgUXcQf61U/W62mJTpvStVNwJf8qG7rlbCTXoVGR
	9+ADqkH+Vbb0aboAfTZBhfTR/qp/x+LqGixbZPzfwCdRF6MeHqWJi2xM15fDJoBw15MxIfl5BuSM/
	l7lDc2byUvrS0VDGkjTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUUxz-0005xZ-Oi; Fri, 01 May 2020 12:40:31 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jUUxw-0005xH-7N; Fri, 01 May 2020 12:40:28 +0000
Date: Fri, 1 May 2020 05:40:28 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvmet: remove unused variable
Message-ID: <20200501124028.GA13339@infradead.org>
References: <20200425193909.7145-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200425193909.7145-1-chaitanya.kulkarni@wdc.com>
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks, folded into the original patch.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
