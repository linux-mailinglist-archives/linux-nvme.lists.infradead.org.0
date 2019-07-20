Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2AB6EE52
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 09:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPL8vQXURW/HPrKd2ZVNSirJcZjw+O08Zy73lfmlLBU=; b=PT80StPlTWxIv+
	AGVA+TajZ5toyOx+29MenoVnW9TEqa4A5kH54vb82ZB5l2XpOhgB2NmbV/JLPDfKjF7xKbrl0hWYO
	srnu0HjSxgmq75lCImsbVL7aRHY/c4TcCOIlb1uh6FPgho2KV+n4xcgjrQHD0pNkBUmXIb1CcoL7O
	C1z/T7hIGtYpfTGBekallcK+5WVHZTHBFEKS8FXLmGrytnuESH4hdXbp8k/zfD1Dd6QM9X1B/m7K9
	EnByol1cRsnWS7VxpU17Sg1ldFLLYeMlgAZcH2c7Ywsmz18mtxn3WBNFpbdC1056oSr3ynimHUfKS
	JMe1rH3vfpcIJlovSiGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hokDu-000066-VM; Sat, 20 Jul 2019 07:56:07 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hokDj-00005P-Np
 for linux-nvme@lists.infradead.org; Sat, 20 Jul 2019 07:55:56 +0000
Received: by mail-pl1-x644.google.com with SMTP id i2so16735210plt.1
 for <linux-nvme@lists.infradead.org>; Sat, 20 Jul 2019 00:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=q4eY5bN1rFwbmfdAFKWNSqh0y/zFxz4BQgMWhsUu/hs=;
 b=rK1niKwreGRiCkpwXlfqpwUBV8Ux5pvasWDI1Ka6TlBLY+gFB6mPiZ15gzFXFVp8Qo
 +n6TErbO5hHnCVV+iX5weCNxKtsC7KyUMvQOT0JGPdDcmak42Laxr3/z3wDIZ8Xjnp1m
 I3LGESeyDLyklmN1laiUiSvzxhSN/CRAVrJpzxVde4vUf95DL9VJ9KY/eMwc2SES1qH+
 QdIpxf2PecEzXYmv4lljSYmekHaLq33dLCJ+E4+kEti2vDa9S9f8lnaX3Qu4DemFN5I3
 hs5IduqNddV4jhW6Vj0fMMTI9MCpninwEQvca33zPrdazftfZfO4bILYBxafiipFkUkw
 s1zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=q4eY5bN1rFwbmfdAFKWNSqh0y/zFxz4BQgMWhsUu/hs=;
 b=iau6sEP+iE75t1jzJWwiuQImgihWqsVlSkP3BKx/d7TlxuaEkUqqFJQtJmM/YsKpp/
 ksQMM0Gdn1qWmgAJrB8eOLWO8oBrnVi3LOOnxWXiGR6zB+HNcb9l19604bNGVyPH4IYz
 AH5eV4Jhgjau+r8yscRrgP7xXzP7HcfckQ1oaKQvVjzR2/gl/hXyoZ03FMQc6Rtfen9q
 ojAqJgXfKmbGpRqyea0WqH4eya/BZrZral55OCwGqyeengjCLk8UR2uxt329/BzV2LUD
 v69U0ECznUHqs+8ojBlR6/tpZmS8HRbZ1DxgtKRqQns9GxjCoRoNW9QROI60SOeg6SBM
 u33A==
X-Gm-Message-State: APjAAAWXR6g+pR1wwMDilkkwpXc9q3ftUxwAvFNBQ2Rcbiq1jjSXLxtn
 Gel19wefkWfXBk+QWGJ2OR4=
X-Google-Smtp-Source: APXvYqz5JkGcriP5x/zZmAL9XRfL8FKuCLDvLbECQasxyUEt3QGCe7AtzQ2d4P0ydgBluP4rzuzrJA==
X-Received: by 2002:a17:902:9a82:: with SMTP id
 w2mr61180668plp.291.1563609355024; 
 Sat, 20 Jul 2019 00:55:55 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id m31sm39315854pjb.6.2019.07.20.00.55.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 20 Jul 2019 00:55:54 -0700 (PDT)
Date: Sat, 20 Jul 2019 16:55:46 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/4] nvme: have nvme_init_identify set ctrl->cap
Message-ID: <20190720075546.GB22395@minwoo-desktop>
References: <20190719194546.24229-1-sagi@grimberg.me>
 <20190719194546.24229-2-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719194546.24229-2-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_005555_774934_BE17AEEA 
X-CRM114-Status: UNSURE (   7.38  )
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

On 19-07-19 12:45:43, Sagi Grimberg wrote:
> No need to use a stack cap variable.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
