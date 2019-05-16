Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF26620884
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 15:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/iTWmZiRGf2/VCu15mPEP3lexzbwz3URl4Y4JQruwM=; b=SYDPmV+vNZ3dtF
	rb/+/t29hzOR73LOGVuKFB9LvL/yYZA6AzfMrkYCfnuzPIHaF6tdBhbvv14Maswp28JQDnZnfExfW
	IFUHYshMub0w0AmWruj1sF/nU91DCR/zZ+z93A4CibjRMrmk+lwM+zTZpuczCNiSlOyBcr4xcLkFW
	M+5N4s0m8HcIbEliXKdFZCMPEGPaqiuLaz2bTXfgB6agjdLoWvNJ6kfqKJuZNQ+dz+6JVR0FHIBDM
	CtRGWAI6Y+OBW4OkWCICA2IBto7x6rb7/bBryD+eGBNXJ/smM9i8RS0ynAsygXN7ZdQ4Ka8f2efCo
	nxBPb/WkdrDEKutZ8c4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGfl-00006R-L5; Thu, 16 May 2019 13:43:49 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGfY-0008QQ-Ob
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 13:43:37 +0000
Received: by mail-pl1-x641.google.com with SMTP id f97so1661281plb.5
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 06:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=S31JEDcLBxkf0+0leLRLwyNs8ezZI6yEuqCuLmcdqjU=;
 b=Lvc0FvZH5NhlfUZysHpYTHgIwXxxi2e9Ent7SMxzk2NRijN6reulQ3VgjktVuKQt3J
 11rI0zc3rF6USR2tArd42vjK660C5/T7XQn+NXiPc6wfR/Loh9AmxrejCAl0lUaAbDKu
 MCy75AM7b0U+82V4dUcPPrykDTob3MqFD7vqcePdBzms5vwRdksuom0drK98okCYs0M4
 Hm/R6heeC0uqcv7nvmxzGElQDDdNfAE9vJKiUNqK7IQOTzw7w5ciGXDVe17qzBaWWrlz
 QWjAF7OMjn9PbO6dPcSH3yF79j7u8hy54jQlKHAelS5OuRfsPovfWl16EnFLdTiXn3iu
 xkuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S31JEDcLBxkf0+0leLRLwyNs8ezZI6yEuqCuLmcdqjU=;
 b=k5mBhmiSS+fB0Oz0XDYvg/L/FTu2sWVHdgCdj4eJlWRjR/0GhRQ5WaYv6FoDHzuoeu
 e1o8l0z6JiY/zqC2Wbu/c2r2C5W6Gnyux1Ck43GIPVavpskABZXYLzW1La/WSaLqAeWU
 YvF5tM/JTlMsw7griT6fngYnKmIG6DfMzseskSGRLPucvPD3yGK+fFLIAXy3xtYqJ2Yd
 uSiKb/HTSWOr1um2asqAISB60KzVPMkpYClI4+8/4kn0ZeQjL+CxhUw2BCzHfebMLFNB
 qArflXN0C1WQiLiI/4v4NriSN4cQ9vvSmW3jqEKq0+MKHgJq8MUextCBLXdahR1PGZJZ
 0JMA==
X-Gm-Message-State: APjAAAUAiRTbW+1grC5zudNutZ/wlwDeiY+ueVumPt4mGlgd67f28oIr
 kC5Dv5d1T4QIk/kJLCHn9nk=
X-Google-Smtp-Source: APXvYqyP5lVKvh2gghJG7SlUuw3ZNcXCl3C5+XxItaHRxRBtSTmenrazz7d1KMMWjrKC2G4MGlIADA==
X-Received: by 2002:a17:902:7e4f:: with SMTP id
 a15mr51000696pln.205.1558014215183; 
 Thu, 16 May 2019 06:43:35 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id f28sm12484714pfk.104.2019.05.16.06.43.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 06:43:34 -0700 (PDT)
Date: Thu, 16 May 2019 22:43:31 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 4/6] nvme-pci: Sync queues on reset
Message-ID: <20190516134329.GA24001@minwooim-desktop>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-4-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515163625.21776-4-keith.busch@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_064336_819406_D3C11DC6 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rafael Wysocki <rafael@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
