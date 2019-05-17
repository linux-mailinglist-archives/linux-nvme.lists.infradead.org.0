Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AE421A92
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 17:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOShgSXVMnmOxUQcQc/8OFtlmb8dK8379/2POzQUL+U=; b=Y+AolHCXbPthWF
	r6KDT2xwfbaxiPFcpSKtchjHQbI2qRIGOkXWpD4PzL5Xs2W9/UK/fW4LK2z9j7Evp22hSvoU2LwWf
	DhGWypdt1Oqk1kFGkyF7aRDNLs1i0zPW06/hrJzPi/VhdhcH1B3C+tgq/tvhXEo/2FfWx0WI8E86h
	y8+A9l0F1NzOBK6U6jlM+/X7h1xhrj2i9xP6pg3OcXrjI3W+WelMsuxE/1B8/wjQmuFbB4/WLj7u8
	dFhrtlJ22wBxwnV/UhimI7WGwquTmZZlz3u2/ZdRZbr/68l4Boc4Kx2xiSwB+3rMYy9yPtgK1Aq4h
	wbFaI6BPcVAqqXoFVvJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRepS-00063u-AI; Fri, 17 May 2019 15:31:26 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRepM-00063Y-VG
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 15:31:22 +0000
Received: by mail-pl1-x62b.google.com with SMTP id x15so3504935pln.9
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 08:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YpJK9fFMwRA3kEx7DDbjFpGb9PFdlsjUeenJnFKsYGs=;
 b=le9IRIIi0j9fVAxW8s7nbFXFvcmm+iVOCFCJR+M71cPu+yrtHTOR0f0FuVZYLNIBbN
 3RfZV8W5gujVOKKX1m/9ipmCvVW4F1FtUglqpjB8o25dUX5AIMS2ORgmJPpYitT3/2zU
 TzuNOX0C83YaA8VFsLqHyHnDoxZzxfK9pcCwHsqoesG6alkNhZ+nS+UIAF0cCPO1FvgR
 wJ03P5u5dM6IKWHuXXS6+W7pU6bnKV240MAplTcafar9pYpA5epUjqTfKw+SWFhDF4Oj
 fA2dYxacW/iEKLMkrsaBGzdc6ZUS46jjDTZOBWcMWGwoEW19/hktZaCWqF+zfbx13vXp
 /U9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YpJK9fFMwRA3kEx7DDbjFpGb9PFdlsjUeenJnFKsYGs=;
 b=Nxl68YuLzpQxikRMOePsU3O+0C/tNlYmNFTs7ALRyPQQ9kK+3el8wWKpejPnPmytSK
 KBFp1U/ct9IAGpdluc7VFuPhMOWZlsJfgAMEV6K3Zm80fbYcpkF1FEbEAqHa8HWHAOBq
 h632iMzmk8kYCdRr0P4Beq0LQfcjqyzLtT+dzZlTBFoZJFXjExBRtrhDYhnm/8oKGH8R
 TA9sLN6Ss9JU3eVSoKl4qOX/qi8q0sdEBpBSpkRyK7KdNy5lJ4Wqfu19HHr0W8LfqpiF
 pJH7VmN+LrmMKwPEozVut1tZf1t36CnNe7fdHSfx3rmNmlTHiaSuFL9APPjgGS7LYOd5
 JX/A==
X-Gm-Message-State: APjAAAX/FRkUy4eoDR9nRPOBmk/fbOcoB/pP+Lvj65qQUAZqOaW0vNai
 iJSZEQ1MpzJiRCtQ9iKdduyPFJhtEUY=
X-Google-Smtp-Source: APXvYqwRrDrtnOdqYs8NgO/DqSZ+Hn/dpk2DkuxEjDxMCcE2VaY3FF7IPFtYpF3zJNKGgPo4OYGkkw==
X-Received: by 2002:a17:902:d890:: with SMTP id
 b16mr9453771plz.91.1558107079679; 
 Fri, 17 May 2019 08:31:19 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id s134sm15136971pfc.110.2019.05.17.08.31.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 May 2019 08:31:18 -0700 (PDT)
Date: Sat, 18 May 2019 00:31:16 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 3/4] nvme: merge nvme_ns_ioctl into nvme_ioctl
Message-ID: <20190517153114.GA28074@minwooim-desktop>
References: <20190517094736.14504-1-hch@lst.de>
 <20190517094736.14504-3-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517094736.14504-3-hch@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_083121_034416_A7BFC04A 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62b listed in]
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
Cc: kbusch@kernel.org, Keith Busch <keith.busch@intel.com>,
 kenneth.heitke@intel.com, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

It has always been what I really wanted it to be like.

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
