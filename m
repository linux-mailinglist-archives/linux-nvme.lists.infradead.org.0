Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5812B9AEBF
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 14:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eczJ1aRqzorUBsrLV4CXoba0ADosiyTStgpjqLVa4yw=; b=jfe6GHGJF5/LvZ
	hW0DVaXMixoFFlil2JZ51uV9fZVGY0QnFSgWNZiqABd28StRN1H/uPPcN3BRWGbLSbXmXUudUAhsk
	sJaizc0Ff22KTZJ1Snsxds55CP5skTCd+Wj9fbzuqIoHxXsvLDcW67qkm45fNuq2ezE+tXoPKUEDh
	OkKjZH+Svws1880dTqXGfGq3iHa6256/Vlm4u1sXy7HQ/rZDqT4wcvZd0hnl6Ayt1qoy2WwCmu+3U
	tFFE4KykhLVsenGUdeX+jCmnKQvPhxj5Pf1DtJgEo7uwp9P1gQXMIY5qLNZEx+l22khnl1P962238
	OrfhAo057VS+eFj/aWew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18Nj-0000MP-5x; Fri, 23 Aug 2019 12:09:27 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18Nc-0000LR-L1
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 12:09:21 +0000
Received: by mail-pg1-x543.google.com with SMTP id l21so5694238pgm.3
 for <linux-nvme@lists.infradead.org>; Fri, 23 Aug 2019 05:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gzFgICF1NtR55yWY3qcYgctIg77Pauez27BNZOG5XgI=;
 b=eysIygcqLY08rtmtbnBCL5GI7A8zIdbhYn2+1k07jHiuosR9yt1wlQB+75jlcWyaLP
 KLSBw1xcBSDE7/veuaDSGX40ywz2qdd078PFDb1VxfHMtJC0IWfj/oG5z8ZQQOk63FGv
 QivkGcvBsn1jRWt63DUxZA31U0MHMho2fX6bG5UAT9xIOEB2PTvxcWGHzlxqiXQ6gXvN
 489jLcayg35l1KX/6Xfvd9aQvcVNebvmoGizy5GNkFjbwtIV/q25kzDbS0j14MEyXUxF
 e/gtm4bAq94zSB9a4f9t7QaLpRDWwJZl+mYgcOtj8ZHX2sd2yZzv4iqazC4X7++rm7Al
 xY5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gzFgICF1NtR55yWY3qcYgctIg77Pauez27BNZOG5XgI=;
 b=PnHq1WCBFOcctyKWpKLMmzCU1NaFTPB0k9RGC/GWg1VYS9YbOmjbFLgD/g9OEJhu5z
 JUb0ZlVfsJq7Ya1grEbR3mp6UsCusp9fJeoujWxXHKcehnnZFLrXKz20jP/U+Pa96Egj
 QCj33dn+Fvu+2UbbU1Es0FtKyZPagYLcLMgC6u65Gt0RjZ9yD1iNTkcDLfqbWIvLcN2R
 NTxdHYx+SgK5uSrKIOQcEVHVasffhyO/VXX6gBGe1Ju15IgujHE1iecmPQiPKlYgj1xy
 CPgHTiu+XKr3A7eTiQ/gsoa0Ehgz9iPu+1VGacr1wnE2q2SYqKvz4TOP4IYyHJ1aRTTn
 8zFA==
X-Gm-Message-State: APjAAAUA3jnT1q+9RaU8zOY/XHqUoe5QSMt9/1NZ8mtlVk8tfVgMHdGg
 UDzVju+fMcoXfyQscShcKzE=
X-Google-Smtp-Source: APXvYqyfKyTWP+emSCkCbBHxi5w3uhZ2mHgqbLFHRgzSgv1yRT0LecglV7tQPLpel7mk4yiXdxMSMQ==
X-Received: by 2002:a63:5a4d:: with SMTP id k13mr3628928pgm.174.1566562158082; 
 Fri, 23 Aug 2019 05:09:18 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 19sm2530947pjc.25.2019.08.23.05.09.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 23 Aug 2019 05:09:16 -0700 (PDT)
Date: Fri, 23 Aug 2019 21:09:14 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v3 2/4] nvme: enable aen regardles of the presence of I/O
 queues
Message-ID: <20190823120914.GA7717@minwoo-desktop>
References: <20190822222818.9845-1-sagi@grimberg.me>
 <20190822222818.9845-3-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822222818.9845-3-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_050920_695872_85D4E6F2 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-08-22 15:28:16, Sagi Grimberg wrote:
> AENs in general are not related to the presence of I/O queues,
> so enable them regardless. Note that the only exception is that
> discovery controller will not support any of the requested AENs
> and nvme_enable_aen will respect that and return, so it is still
> safe to enable regardless.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Maybe s/regardles/regardless/ can be applied when it gets applied.

Otherwise,

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
