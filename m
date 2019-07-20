Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0946EE65
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 10:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bilp4I2m42QvtcJG8IrLb0B7CDSEaymXQ/qrrsyDE28=; b=Hc0tADrFOd0NP2
	yjkuMv2gvXmydNdumSvmxNLG1bhV1My3e08fjG+L/9K45s3FYrpXqbJ5xxCui/wjdVovbzc0e+GFi
	1nxHaE0HL2dhGfZxjh5MdtMUF2RqqIvxGyGkpnVE3RB1ZSOiNuw6Y3eLRZvHkkwQ4hN7j+yMraMGN
	E0tK3lAkYGXBkJ+Q2W+vsllLzmUX6iXK2qTTccbzXWDgVo0NHD5gxVvRL8eOpuElzjrnYwNN4189p
	N/auvigbQveQ2CuAG68S9CQK0SaMwKx6qJLDHgi3Tjvagnx7y1bfp6JWxDkmJaVaLvmGULnu8Pi4x
	c21RN+B7kDW79D1v5qwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hokUY-00068w-B8; Sat, 20 Jul 2019 08:13:18 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hokUM-00068T-Rz
 for linux-nvme@lists.infradead.org; Sat, 20 Jul 2019 08:13:08 +0000
Received: by mail-pl1-x643.google.com with SMTP id c2so16701956plz.13
 for <linux-nvme@lists.infradead.org>; Sat, 20 Jul 2019 01:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ejUgaA/wrz2Xw66sQG76KWBRcwfGmf3NjXM4rQV1EMo=;
 b=K/RlYcPEXvHH1Sbg+Sw+elbN+Bv+pATeK9gV+QhChQPjgOjOA7sp9zvmlP6L72tMcV
 HgcTeQav4+l66pby2U5QARYEc5E0YYJ5qST3ZXJTWOcpbwIhKfoI9+0cn5dJwm/5FPdI
 hlBnvmNu6XuVdjuC34kaWH4cKqozgH0pjWq7pGHqQDPTpzGYrzGyamW8xb5mQ4T/6WKh
 SQ5GGAffa3likm84pDKPtebZnCU9gMrK7egr7lb3Qz9W2km41nVShFqjLGj4wAzYs0nO
 Qzk3caf4BdTl2O6FJt1NVWKSkcrPThrfBY8JLCegLqBagMfUdWJvY4hnzXLEocQpuHME
 lh9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ejUgaA/wrz2Xw66sQG76KWBRcwfGmf3NjXM4rQV1EMo=;
 b=rjVvEvGq9OPaGwPWfrpLqu+UJa6qwc8hJVZuAdVNLr5QqrnpYPguxq0h4CqIs5VSDE
 pYNDFvZuvWjbg21aASs+2rLYNKk2eaHPBOTQL+emx+ADBHszvuMlo4WZFYRs71nVPufX
 O+STciwtiH3+f1ZwhLWehcNi255s/YjD6Gd7JzipKsLLdB82r69t8o2PaZOh/0EvODM5
 tQi4TKD0UrUzViheUhqi6eTgtsYCDE7Ua/4P/ok8YiY9o33qwMrsQFkBD+sHqC9FOWgO
 t83oCQKRO34Z27WMybtkgw7bDPJUD2q0mvNyHgXzUuWzN49rsvwcpcUqzjER+1ZaIyud
 Xt5A==
X-Gm-Message-State: APjAAAXqy7PQ634mJc943RYg/+FW24vCtaknnvBWeEKDPfhDetAJTA73
 2d+ZjyYcCfHsOe9kYFXGxXs=
X-Google-Smtp-Source: APXvYqxQ6ZAVoJhPLilWvCEMvO6plouzWXGhM5mbwxqSxm2FzVLuRhy4PxMp0WStKvSapx1JzMAeaA==
X-Received: by 2002:a17:902:1486:: with SMTP id
 k6mr60808233pla.177.1563610386011; 
 Sat, 20 Jul 2019 01:13:06 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 11sm34163160pfw.33.2019.07.20.01.13.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 20 Jul 2019 01:13:05 -0700 (PDT)
Date: Sat, 20 Jul 2019 17:13:02 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/4] nvme: have nvme_init_identify set ctrl->cap
Message-ID: <20190720081302.GE22395@minwoo-desktop>
References: <20190719194546.24229-1-sagi@grimberg.me>
 <20190719194546.24229-2-sagi@grimberg.me>
 <20190720075546.GB22395@minwoo-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190720075546.GB22395@minwoo-desktop>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_011306_934226_7FBA9DB6 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Sagi,

I think the ctrl->cap is already configured frmo the following
functions which are all before the nvme_init_identify():
	pci: nvme_pci_enable()
	rdma: nvme_rdma_configure_admin_queue()
	fc: nvme_fc_create_association()

Even it's already stored before it can be read again, but should we
really make it read again here?

Also I can see the 2nd patch description which tells that
nvme_init_identify() loaded the ctrl->cap value instead of the functinos
above.

If there's somethiig I missed here, Please let me know!

Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
