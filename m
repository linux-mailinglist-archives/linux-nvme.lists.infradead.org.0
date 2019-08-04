Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC40809E3
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 09:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=paqbY3xW17Lvmt4l7ENediRXA4Y9wbJ1G6TDD9YO7eQ=; b=PmD1ZfcqQWtNZ2
	fOiR+lyfMXwGlwEY9qGWR3gzY+Z80cLP4IiByaWxUYT9pYs3Acw45r6exmlgMYlc5bC3Pmv27Qaro
	i63baiaTOzAxeCpYvxzDe1rQSCeeCZuyu5hp0LAmvUsyGYIiWxvp1JSNdBaJly2YIin8c73a6c66X
	QYWFKLBFf7sxiljYZ+YAAr2WrSzucnqVtqlYXKze5QCirtEeXHgOqZrgVNlVT+A0tN88Epwy5e8u8
	cPH6o5oXsJc8JgSpvH070Zy9/9gMUyKDGtt7KgO2iCX/AE6K55Wv9qMZroyKJiffgeRxLcdujpV42
	Vq0CCa6KfyQDzc8wjOQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huBNk-0004QL-M8; Sun, 04 Aug 2019 07:56:44 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huBNa-0004Q2-Br
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 07:56:35 +0000
Received: by mail-pl1-x644.google.com with SMTP id c14so35176452plo.0
 for <linux-nvme@lists.infradead.org>; Sun, 04 Aug 2019 00:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ufXneVAdGF45tinhp4uscScazS6UL5fX+nYlrtdcMso=;
 b=lpFD8mQScRM0SoCaU8YyL8hd1RHwO5EMUYf5bzRvsO0LmjFeSTIosW1eSuk8gMlwPR
 N0vUvLQQiH/raBDGHCUjstp/dCLrzNOVUq3kdR6R/fCWDjXXOZUIZkPSGp6FBlsQO+08
 t2GnqQtb1/Q4O8ODI5Wn2PPQ/A6TnL1id2790NnEN4fFPY6N5Y/Ye5S7GKBKKJOVs/WG
 LNxsiBpPF31Kh913vCajx0IkPRHEFv6MvVsli6L04EJ823eICBwbZo6RD1c3Gdf/mS80
 dNfQosF29PvknkkvLYIFVIZgYcSSJPK/Q4sK2r862aw+ESxlI3vgRmVPeoreLLOoVdnR
 15QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ufXneVAdGF45tinhp4uscScazS6UL5fX+nYlrtdcMso=;
 b=s66qS9I7+BjzHhAI2U/jnzFnfeUM9l9WVUn3grvUZF/O2e0M5zDxuOG+czEtaBV5xd
 RKZR7dQDUTuxwOVhJXUFA9+mCJ+VX/kKFqqPN6l9AS9WR0E2Vr/E8HNyEtgNRDzxmvq4
 ddcBdkoDKv2XswwurE/XIfhR5XZUffPTCw6A7ZmN9HhgRYfa9Vtt9q1m6VT+N+60VcMn
 WFrwkwrj06Fx5OM+YMba7CjknD0yUeKuIanaH5/cMfiWKs8oAq/zTxK1wQkRY8kWujh2
 +iTqqdD220qvfn4ye19l7xiTQYt+L5Xpb1luGEM2i+XndK9+HV8N04iHUDH1Pp6DW5D7
 mfBw==
X-Gm-Message-State: APjAAAVBpJ3shXLMoMumFO2BV3J1+3qhLKybRjiKBJ4ugdQJve56IlRH
 pCBILsefxF0R5Ks6DKvKYi8=
X-Google-Smtp-Source: APXvYqyxRcQRtRBpg1nJsFkjY95Y8N+yXI2A9KOGSwg8xLD543tckifIJz5KPSgM+4AOheHy1J23Bg==
X-Received: by 2002:a17:902:e40f:: with SMTP id
 ci15mr139658784plb.103.1564905393686; 
 Sun, 04 Aug 2019 00:56:33 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id q22sm74821308pgh.49.2019.08.04.00.56.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 04 Aug 2019 00:56:32 -0700 (PDT)
Date: Sun, 4 Aug 2019 16:56:30 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc v2 1/6] nvme: fail cancelled commands with
 NVME_SC_HOST_PATH_ERROR
Message-ID: <20190804075630.GA14486@minwoo-desktop>
References: <20190803024955.29508-1-sagi@grimberg.me>
 <20190803024955.29508-2-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803024955.29508-2-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_005634_438996_A2BD3B0B 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-08-02 19:49:50, Sagi Grimberg wrote:
> NVME_SC_ABORT_REQ means that the request was aborted due to
> an abort command received. In our case, this is a transport
> cancellation, so host pathing error is much more appropriate.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
