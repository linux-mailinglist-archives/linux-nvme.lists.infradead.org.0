Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391B419A82C
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 11:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94E9RJog0GDDRMTvDNh+EdRgpOadKPgGSM72ZjtOxRw=; b=Ft9VfN2E3XnGyu
	xJTIok96TePt71wuGl75uuT5twgL6m4CnYhb44i7mAzclDST4kTRfRKSubmoo/Xpl8rNtTkEoDrBq
	84VLgggVhQAz3jP7njj0ZwWrXywbO3atklhtC4gZKyFHk+gyLPnzGFSNbFmmf1vNsicmZp5ciMOFo
	Cttq6oUgosDYn4r/o9R+dx/LLCcudGx11fxQHhbIt0WcWk24TUo74Pbrvp+7DEyJQJRfsFOORlr5V
	k/p3JSQBZWFa3R9YEpJ6cU7TC3zWCfaGUHsXH7pZodXTCVg+5C6u3qwvGM2SKFpo6/SZahlFAxekH
	fTy0ESANOU+AhAB9WYfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZHJ-0006kX-Lh; Wed, 01 Apr 2020 09:03:17 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jJZHG-0006kE-Fv; Wed, 01 Apr 2020 09:03:14 +0000
Date: Wed, 1 Apr 2020 02:03:14 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tony Asleson <tasleson@redhat.com>
Subject: Re: [PATCH v2 0/7] Misc. corrections
Message-ID: <20200401090314.GA13702@infradead.org>
References: <20200326180750.469346-1-tasleson@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326180750.469346-1-tasleson@redhat.com>
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

Thanks Tony,

I've applied all your patches.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
