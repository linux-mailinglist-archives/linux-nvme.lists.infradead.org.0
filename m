Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47C8214FE
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 09:59:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJ/NdXHm+Ojk9xFitdMbmD/ULSHbgAwcBQ1ObNfCFsg=; b=uoEMeOJM0pycKT
	6btla8Ag6D3Aaox9noxpF8JUNQwE70d1v0eXubaJDgfyEX/KJTosV2Ie9944SyVLomJaq/U2JFoPV
	8Ys1djJTz9nVlBugfRbNYcZmzZqJ2NR15uTNMrdbe6ov/cQR1qcg1ofZijjonC8DoYgqIJQMObxlc
	qCDvWqPdg+lW8uFtxgx6lxTaVthGIuWXK2JV/DVrsO1VBxGbuLVvrNWE8NIeh0LFtVSvQwKx5LNEM
	I9uH9+azzRGAhN8b3+r0vNCpYCkDAvILrP4xjn+uLdXv3/cybN86Tmd6tim/ypOHkZ0OfZ+C8AVJH
	KHgLG7clGre4q1EL6UOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXlr-0006dv-C8; Fri, 17 May 2019 07:59:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXlm-0006dK-47
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 07:59:11 +0000
Received: by mail-pf1-x443.google.com with SMTP id u17so3290503pfn.7
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 00:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HgsQGVzNxq5CuLq5XZwk3WlCgHq5StJ5M9lW3XTub0o=;
 b=CdBK0OfQ2DGBE3EpeMYjPhLsgainBOvUkUOqB27Y4iWuV2Ar/EQnD/qjB9/RDchBxb
 E+oDcypdaa30tDj+5sfx8FBtfJQRdFsMQuSGiCFhopgadD9z9YaWU/5zwDQZ0WbY6d9W
 iXSsnixqXFympcT7chlZpOfNEpmpmEdyQmOol0UC9ToxdR7T4WUSXrNZx47Qb/gFEk3c
 QZg5SW48zLo/FjUgQDWXEnK5cVOF2oKW1ttcrPz1qQkrsLkQ0zQ7pRUMPQ8/9EHFiGZ9
 r6pVqKNG0y8LJ26xF5iP9F0CphJuaCvUySB7/IrX977upxxoOax7MARQZw5OMx5iIqbX
 Fy6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HgsQGVzNxq5CuLq5XZwk3WlCgHq5StJ5M9lW3XTub0o=;
 b=U19jVdAXxz8JxRiBNOlJtKBsLFfOT7fgBgGBpY2Mx7FE6AOhXg1dubp1O+LpiN3XHs
 zfAV9yMR/e5xj5r1yXq3JVPdLNc7qfH61XXjkjra1z90F+gmbpWmZ1KLypfvDg7rFnNN
 C9teQqeAGBLQsGu+M7v2Ga2xJRWs5x+LFlwtA1mI7F+22dX5L7TxPUdD93N/0NaCxwu9
 usbmqdeDjOLtD9MgPDz1su3SvIvrTd5jXhWpP99wpvWwWRSECivMp1Bgh1lAfoHzkDDn
 txk9HOOdepBre2POYYwLQkrAOCR7YaOxrPknodOfbI0p2LNocc6AmxUn9iV6scSv7VUl
 Hiew==
X-Gm-Message-State: APjAAAX79HdJOfC1DLKCUnBrKH7a4kLBJHzWPRkV0TK6pTPhyS6aK30N
 0GQXFtdfDubdY9AcTk7/pDM=
X-Google-Smtp-Source: APXvYqwgjqmvNqVXDwYu3wG4Vlxf8+xwAAC93HnSPfL8D71NjlJKsARkCsZMk/T1rXDy1JRZG6v6bA==
X-Received: by 2002:aa7:910e:: with SMTP id 14mr29807720pfh.153.1558079949051; 
 Fri, 17 May 2019 00:59:09 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id w4sm8957633pfi.87.2019.05.17.00.59.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 May 2019 00:59:08 -0700 (PDT)
Date: Fri, 17 May 2019 16:59:05 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 1/3] nvme: separate out nvme_ctrl_state_name()
Message-ID: <20190517075904.GA26359@minwooim-desktop>
References: <20190517064254.95561-1-hare@suse.de>
 <20190517064254.95561-2-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517064254.95561-2-hare@suse.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_005910_241711_C1A2DB32 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Hannes,

Thanks for applying my review point on this.
This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
