Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B633C10C450
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 08:30:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STVmD0FgWbbUcvNM2AtCMqRc0wH5Qddp1BDu2Wp9lmE=; b=BZ/noSOF+FOdyi
	N0SkJnKjcHpcSa9dE403HoAc/bZrRd+q3wNAn3G+39Yg07lgQhkrchnsXw1kU39EJZ7fkQZ2/tLEl
	sJ5bw7yhgbTCiNxf5xBMOlY4g3mZAuOzbqMorQUoSx33zJc5+JWJzUs4/v2LIdrfjgsuq8SnZ3kyg
	ug67q/iwfeaCRx9qSnRYyWoRTbg5/FxQwOJk4GdFRNQ24VxZwQoX1SSLX+f8v6Htjg2d24xcsihad
	RvME9UW097ogr3taEeYkfyfTwM1YN7kR5XFn4n1w2OjPxFCLUpVIeVvoz+FCG2UTgi0o91w4VeGPX
	j33NTN9SPYQcdmipHVtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaEFn-0008SC-1s; Thu, 28 Nov 2019 07:30:19 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iaEFj-0008S2-3f; Thu, 28 Nov 2019 07:30:15 +0000
Date: Wed, 27 Nov 2019 23:30:15 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Edmund Nadolski <edmund.nadolski@intel.com>
Subject: Re: [PATCH v3 1/1] nvme: remove unused return code from nvme_alloc_ns
Message-ID: <20191128073015.GA27403@infradead.org>
References: <20191127171743.32730-1-edmund.nadolski@intel.com>
 <20191127171743.32730-2-edmund.nadolski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127171743.32730-2-edmund.nadolski@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: kbusch@kernel.org, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
