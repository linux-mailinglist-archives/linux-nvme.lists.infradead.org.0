Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E292A505
	for <lists+linux-nvme@lfdr.de>; Sat, 25 May 2019 17:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3akr0bYI7gdMEoyt1j0gK9sG1MZd99LHX8WYJJow7ag=; b=RjWB4nw9VfFyZN
	VITfu0StvrZltYglfOUMFi5B8CA8TI9Bz+NeavCfzd2bHODoN+FMsBJ8Ha7bEi+kRC5n3OJuGLSDS
	Hy27jRmxojX3S6lYAioNhTr9b9opCqqcYS7MGrA1NOiVAUgxHsLMbiVMHVCVcFwreP55bI4MHX+ap
	jmSyMn6CsM8/QvCT6hUYNEjwvJAlfuqglaKX6oadJR1lBWmcHWe87YkS6hYGgcvaT3546gJAKcTox
	gF71wr5N3V+w6V4M0FOO83h/eSDJZaQUuCprZ9ROucQsYF3gzWrX/HWNgQ3d4Cg5qZQI8Rjzuv+le
	/DSevKoDo+TKOHbuRu1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUYEs-0000sr-1e; Sat, 25 May 2019 15:05:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUYEm-0000sW-5M
 for linux-nvme@lists.infradead.org; Sat, 25 May 2019 15:05:33 +0000
Received: by mail-pl1-x641.google.com with SMTP id p1so5355925plo.2
 for <linux-nvme@lists.infradead.org>; Sat, 25 May 2019 08:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eJxSeq3hocKSghrZoIFPVnV1bN0bFwDBitKzt3Fvyao=;
 b=elg5kdsrmVpAm9LEHYRSalKVAa/DYa7uZYUFmnl+CgH2Z+r58OaIVIdRF80Hb0Tg0m
 SVcsvzTtCDjOhQjyzB5e3uCqioR+U8K8Bn1PlX3U4M7XgkowryPm+nmwsxBSGdhhXihH
 x353cQ/5KiHsBmvP+LqHs6Vno0BBA9Cum2F9592iDe+rlZqEy6NdZTezegAeSkUbRGyG
 kGEOO3SeB1dT4ClhEq2nODq9WyU/MVEywzq1quOCSefdjNBsO2mUNzRZx7i0jqsldIVj
 mTiYspiMBE1fQ+w1lNC53X63IAwko/feP3KuJHpK19OUsNkmuySwAYRiVK1MopzHvggw
 V2FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eJxSeq3hocKSghrZoIFPVnV1bN0bFwDBitKzt3Fvyao=;
 b=YkLcih0W1eGjAsyo2qnrfv5STHZ32MYzZ6scx8HEXI2fZcoW8Gkbx8mhzNnYH0NA6m
 4PqEtfPmw5W7WYQdPdi7Zia92druUFeNdL9IJn0ApuQ3jyyHolR5AJyxOCUl4FjLG3/k
 ICjXmVZmho3J1KSLnZ+aJegek2x5Xez/YrgUaEPYN6iypVcGFT9Bp7KtFic1RvX9JrSc
 L6uw8Jrl5dDv/Qk8aqojAh8acVSUej24yKvv3iahXhYk3AMgdCuXLeqXd49KnNw0I68T
 QNIXhQLTw8fESM4HcnG0H52Dk1h1EahDqaPkICRMiiNexNrChdv9yxk9AHoXy0Typ+6I
 b1iA==
X-Gm-Message-State: APjAAAW2IBr2MlsqLLGUD9Kdzhi61Mxbjbd0gPT/pLtATUhjJSLxkwpm
 5F5fmXcL30Ddf0mzmSet9iE=
X-Google-Smtp-Source: APXvYqxU5FFHxRustgpNs/KFYOBctg9g04lcJ7+aMpsj/kw8GhVpN6glMvIxSTYfdDvtmL9Kw/mI0Q==
X-Received: by 2002:a17:902:9a84:: with SMTP id
 w4mr52417927plp.241.1558796730834; 
 Sat, 25 May 2019 08:05:30 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id l38sm4363966pje.12.2019.05.25.08.05.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 May 2019 08:05:30 -0700 (PDT)
Date: Sun, 26 May 2019 00:05:26 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Keith Busch <keith.busch@gmail.com>
Subject: Re: [PATCH 3/3] nvme: quiesce admin queue for fw activation
Message-ID: <20190525150525.GC342@minwooim-desktop>
References: <20190524202036.17265-1-keith.busch@intel.com>
 <20190524202036.17265-4-keith.busch@intel.com>
 <20190525131710.GA342@minwooim-desktop>
 <CAOSXXT5QT4q7fbTgs-k50DU87xeidgFoGkJDboY59ypU6ovHzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOSXXT5QT4q7fbTgs-k50DU87xeidgFoGkJDboY59ypU6ovHzQ@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_080532_505158_AE1B2404 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bart Van Assche <bvanassche@acm.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Ming Lei <ming.lei@redhat.com>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> >
> > Keith,
> >
> > Can we have an warning here to indicate if device firmware has not set
> > the CSTS.PP yet.  In that case, the information message that you have
> > introduced here may be invalid.  It would be great if we check the
> > CSTS.PP first, and then print it out.
> >
> > If it's not necessary to have it, please feel free to let me know.
> > Of course, device has to prepared the processing paused status,
> > though :)
> 
> Well, between the fw notice AEN and when the work can finally check
> CSTS.PP, we really have no way of knowing if the controller paused and
> resumed before we observed that controller status, so a warning would
> be a bit much. We're still quiescing, so the print is valid.

That makes sense.  The work scheduled from the AEN request cannot
guarantee whether firmware has paused/resumed or not.

How about this, we prints out that the queues have been quiesced
instead of "processing paused" which might make confusing between
firmware just sets the CSTS.PS and the work scheduled has just quiesced
the admin and io queues both.

Thanks for your kindly response, by the way.

> In case the controller did pause processing, and we hit the unusual
> timeout race that does not see CSTS.PP, the new prints make it clear
> that's what happened.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
