Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A0D105A66
	for <lists+linux-nvme@lfdr.de>; Thu, 21 Nov 2019 20:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6oVPa3pFq7rB/+TkUfjvJgZj1Y6T66EcZ/v74R6lv8A=; b=F+BXj90Clpp7gl
	0a9Vkip1YbIK7PKckUKYADsTkmMquoB/Qdp4iaSHjvITaOL8lO6o+k/aLgJB0yvbnMNrOf9DH2SKj
	5hWW+RNk2SjAEroHLWHwt/MvuBE0NcHXDfQEEDDUZURtLwSTCzPznCauhc7Xe3RJu/o5+cRX0Dahm
	CtWLs5oZyo9X44P12E0xWO7sDVWufmiBDStGQ3pyyVplJKH/5FswYL6VVYxU4heJyxnwLG73qkarz
	JLkYCme08klKfKdQ+Le9S3A3FwMBHVnC6FGYSyXgm1b5MFT1wVNVLmZ2X9HWisp/XeZYQmFNpjrpG
	98lfhzyA5QwqF9zzDzgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXsAK-00084y-0a; Thu, 21 Nov 2019 19:30:56 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXsAE-00084Y-1W
 for linux-nvme@lists.infradead.org; Thu, 21 Nov 2019 19:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574364647;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qMet2JEdMjw/IQJ7GCStsxIKY3BVNa/XA1Eqc932eO0=;
 b=hOKLjWSl0n06koJ69b1MjBeNBQsOngjRDAAJXI6bzmFJRGtpGcmIwn+cla3RdO25co7Bib
 FFE7v4IL0hyRMycYarsIPPreUDFBGxkEUXMe8oN6dxCRF5tFqnwN0eajKARsvD8rGLt13Y
 ggj/VI15VAncDoTVuhieM+ozaw9wyrM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-213-g2Dgjv_qNHmhnZLe_peunQ-1; Thu, 21 Nov 2019 14:28:48 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4C20618557C3
 for <linux-nvme@lists.infradead.org>; Thu, 21 Nov 2019 19:28:47 +0000 (UTC)
Received: from emilne (unknown [10.18.25.205])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 08D3C10AD9A2
 for <linux-nvme@lists.infradead.org>; Thu, 21 Nov 2019 19:28:46 +0000 (UTC)
Message-ID: <ef606481a3fd09992fcfecb488eb6a345cb47080.camel@redhat.com>
Subject: Re: [PATCH] nvme: add error message on mismatching controller ids
From: "Ewan D. Milne" <emilne@redhat.com>
To: linux-nvme@lists.infradead.org
Date: Thu, 21 Nov 2019 14:28:46 -0500
In-Reply-To: <20191121175810.19501-1-jsmart2021@gmail.com>
References: <20191121175810.19501-1-jsmart2021@gmail.com>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: g2Dgjv_qNHmhnZLe_peunQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_113050_157115_E26D8B34 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2019-11-21 at 09:58 -0800, James Smart wrote:
> We've seen a few devices that return different controller
> id's to the Fabric Connect command vs the Identify(controller)
> command. It's currently hard to identify this failure by
> existing error messages. It comes across as a (re)connect
> attempt in the transport that fails with a -22 (-EINVAL)
> status. The issue is compounded by older kernels not having
> the controller id check or had the identify command overwrite
> the fabrics controller id value before it checked. Both resulted
> in cases where the devices appeared fine until more recent kernels.
> 
> Clarify the reject by adding an error message on controller
> id mismatches.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> ---
>  drivers/nvme/host/core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 9696404a6182..c272afb084d1 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2824,6 +2824,10 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
>  		 * admin connect
>  		 */
>  		if (ctrl->cntlid != le16_to_cpu(id->cntlid)) {
> +			dev_err(ctrl->device,
> +				"Mismatching cntlid: Connect %u vs Identify "
> +				"%u, rejecting\n",
> +				ctrl->cntlid, le16_to_cpu(id->cntlid));
>  			ret = -EINVAL;
>  			goto out_free;
>  		}

Yes please.  More than one storage vendor has run into this.

Reviewed-by: Ewan D. Milne <emilne@redhat.com>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
