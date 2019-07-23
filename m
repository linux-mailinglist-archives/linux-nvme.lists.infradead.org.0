Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93ABE719D9
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 15:59:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3/sXlhBTV80p4rx58/VZKVySLiPBagYD3Mga0LNBq0=; b=RMtuaeYBw/jnja
	h/PqSXGl6++OKTG2omwMHXHFio8wwkxCIP4XxhaGB7Z0qU2XknvddohTDBXMSEvvZIbD5yp/XdW9D
	owuVJm2pNmO5mX59CPfWzCKsBlzRHj1cTuOvsLYRBHG1QuV2EPoCWfvfNnIOxFIIJ5Ejft4er6Ln9
	FTV1Vvf575DRWJYdG4Izi7kDrBLsVTJ09TCVqK2pL44darGBAmNXPgNYkq1MEW1UR0xbc5ywq7/1e
	WJlzYG8L/31+ps+Z86Y2eSRAGL6fu4a7B0IMutQFIJw7OC77tEMeRVMnuKDspgATGWY4e78nmBvzX
	ezgWpaEWK8Zddnix91og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpvKG-00064R-T8; Tue, 23 Jul 2019 13:59:33 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpvK7-00063x-JW
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 13:59:24 +0000
Received: by mail-pg1-x542.google.com with SMTP id f25so19471895pgv.10
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 06:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=20Vp4ZBxyTdnbtKFlyf1VAKcWMQ4zF0xJqRC/INLpXk=;
 b=SoLQV2AIq/o5cIJ6x4T20bu7BG55IDY7SOZkqJWOYsNtZmo2zPnw2Mtk+fSlMFOJpL
 xLWkMBp8MkizcliJwgb802HM2PchxgO1XmZhcHZekWURC7LpUXS8ZtHhZ5WceyOtoCVB
 IsxBZnscj5HrIWOQfBw5NEq/6ZIjth6W9EOp5jHiMZkIdPsOO8vvI6X1ArH+IjkC/7GE
 DSzxpAOYXOwVU6xGFfa0hkBOpGb/LWQABrIQmIL8i4pYKM4dv0upOyjREjkHGyiCTrZP
 gPl/IfFS4UU8elMvLDWAWY+PMAozhpuHPzn7bUL1bs5XvhuSb9OI2dhEv6ZarvN4qe3Z
 1R3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=20Vp4ZBxyTdnbtKFlyf1VAKcWMQ4zF0xJqRC/INLpXk=;
 b=hH0eKMDL00xmXtv/t3nU09PmOymMroPo7M5TFXUBGnVkqZTVrAAeILuLZcbTz3eBGa
 m2N97xX5U/q+kKxUGFNR52QU6/QXzoJt+hSRrsAwIXvrfFplLj5FfJZjG9Yq4MJXwHu9
 hYrbd3A1RG7hO03TB6j17pVwt58McbtcOeB5ryfKQV5RVEtgB9M7NE6phO4exFP0bL8K
 YY7OELWcAKJfpWSCBLg3Y9cnQwk3vpry0JUEnHCx0n5bfObabWoUanzuI0qxgRjaniTa
 Gs5rBF3YNHD0whSWAdvytJO1fCdu9KhC4xQyyGSebSZqbGgHCiUGwV8jXt8CuVt6iv/b
 aIfA==
X-Gm-Message-State: APjAAAXEepgk9ZY35upEoBhwv070nWDr4mVMcdJrnIRDlomjOi55K2Jw
 sbA/bd/3InR1b8MbMGSuCZ8=
X-Google-Smtp-Source: APXvYqxnoGLpffOdczNAgssQXxCi3zG40jugUBHrNmJoqhzXdbfl9dB3/c7zGJzDVi9v5TIfC9W2CQ==
X-Received: by 2002:a17:90a:1a45:: with SMTP id
 5mr84209643pjl.43.1563890363221; 
 Tue, 23 Jul 2019 06:59:23 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id k64sm24281001pge.65.2019.07.23.06.59.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Jul 2019 06:59:22 -0700 (PDT)
Date: Tue, 23 Jul 2019 22:59:20 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 3/3] nvme: don't pass cap to nvme_disable_ctrl
Message-ID: <20190723135920.GF7148@minwoo-desktop>
References: <20190723000654.6448-1-sagi@grimberg.me>
 <20190723000654.6448-4-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723000654.6448-4-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_065923_644817_CA24E512 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-22 17:06:54, Sagi Grimberg wrote:
> All seem to call it with ctrl->cap so no need to pass it
> at all.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
