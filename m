Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66CF51C38
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 22:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFnSoC14DLLvqepwA50LKvoHGvfWVR5Fx3VIi2KCLQU=; b=oaZK4mUFtqbWvf
	ZFXYNQ2Y5ETH1jfPBK1B0T4e8AULdzBwT8utzdIPyKpfjcfG1l6p5fwPKEW099Bq5fUFLfGv6+wUt
	yIgs+PtEWYWp6Om9ldkI2bh/leOXmPZlxPYdKElgm1ep8xLm65A5iK3BCbcj1WnDQnDNJAkSBhJBE
	lPXqnCwGILwzJ9ZVpcV4o2AGETXLQYI/+TH8aDQDq99YHHJe9t+5+TuN0ke5+1moGNaYJuOjEuT5N
	FTY4GvRBq5YGWQCwDnVfNvkMswPaMeGcOFE3wqrpTGmW9jhOj6766o224sD2RP73G6slvhwxQSUY6
	GBN9MvOswtX0K/0n37nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVVo-0003di-2t; Mon, 24 Jun 2019 20:24:24 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVVh-0003dO-Q6
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 20:24:18 +0000
Received: by mail-pg1-x530.google.com with SMTP id w10so7692478pgj.7
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 13:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DbzYyUDp1dRjn3H+usjWi3D9EIfYCLIg8vMo1iKLxOE=;
 b=Z1Q57SHQB7ez5PE8GQ60J2xo/mfIC7Rh2CL7dcauj5ogbxztzLTIjPAo9ulsZIK+LS
 e5GyMI2vMaz3s9ijKGma6ALb5PP98gtSxvuZLbWkVpxdmQkqC4iw5OnWBKT1kQxt1hXJ
 n/js4HhGjgJcyG2tsRQ20I6pSDpEU8cmUuYaMHXhrDlukr+SlKlYUN1PhKgRmWwnw1M9
 8DNHHL0WFcJ7CAn5pXnSAljTlOW30oW+OHCzHcUm+hetKYxoGIX3i4yoWxf5dxoKfVZG
 fYPYex3ai3gLDrdSpy180sfQfiDSahMwerjInHyX19/3XilAPHd0PDRXKYKzvinFydtS
 vsIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DbzYyUDp1dRjn3H+usjWi3D9EIfYCLIg8vMo1iKLxOE=;
 b=aIK0Zw0xbGLUfaOWPCyY+pHUdHWOzCB+46iEZBo6byWoWGKKqJYlLc0waoy58fH/3I
 LHxSU3udqvb64h2ALv+T4i8nadeY+/DD38k4NC2URGh/jkKHU1M1IaMCBHwrt0dg3Ryw
 25XmZEVjRe4vEtum0SJ98V+cTZmtYyBHf15Pw/Do6gEu3QmjT2EubgZ/h5MCro/TLBwO
 A/UIsvAeDXNpwQeixDMhNDoFbM1Kxl6pHf4DfJdO/AUI8rZb23oKsTTEd6Nu0N7mpKMy
 a6LALu9HzYhsaEH+f0TrJWeoXWAOYbTw9Buc3YYjr8fui7ygMDUkoa07lTXVKhaz/Kcz
 2cPA==
X-Gm-Message-State: APjAAAW42suXdNg74WJUbPCrdT98OCZW0+P/1+YwWuKwOhJm/mMj2pmj
 gDxrhPz3JP4/070Ooea74Vc=
X-Google-Smtp-Source: APXvYqwEIBO0HUUhwbizywQBCuPRuVg1n39Piy2auQdE/pI+TMT3UAMwtCZuG87VoUjDWaXj2jh6Tw==
X-Received: by 2002:a63:6b46:: with SMTP id g67mr27070741pgc.45.1561407856158; 
 Mon, 24 Jun 2019 13:24:16 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id u2sm293536pjv.30.2019.06.24.13.24.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 13:24:15 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:24:13 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH nvme-cli 1/3] nvme-cli: Restore support for older gcc
 versions
Message-ID: <20190624202413.GE6526@minwooim-desktop>
References: <20190624200521.28191-1-bvanassche@acm.org>
 <20190624200521.28191-2-bvanassche@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624200521.28191-2-bvanassche@acm.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_132417_874701_0F522822 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

It looks good to me:

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
