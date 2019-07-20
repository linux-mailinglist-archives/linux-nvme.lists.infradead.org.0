Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DD56EE55
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 10:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8By9DAlQe9ZpKI4GKciLs6vkgIYAW26C1sD12jrPQ0E=; b=maRt7u+abxyy29
	7+hIQ/AyeKeqBXLzwMcdL0sKCS/CgrjPG0hrJDerVRWf8BdE1spVg7rp6edvJwPCdY4SwQ1XKmpYX
	MOkek8lfJy2ZlhXcipHw9jP+YEUXZjf/EW7rBGDqvORlGlTT6Aic31KGjcOJajkKQcX6Qmq81bNhF
	mMgGnVkt9to68JU9Qbu7zE6Rms1TP8wPSVs6anliCbI5Z23VoW5hta8Nf9PJl9CkK2SOz53ThBNQx
	8iKBKo30klL4lvVaDvqNz5FkzYObO+yrTlKWV7R/xwEJMh6cH1c7vuTBMdU0JcxVcHJP4dUeKBnYs
	lfZKTce6KigfoO6UwEjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hokI3-00024B-Ea; Sat, 20 Jul 2019 08:00:23 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hokHu-00023u-4U
 for linux-nvme@lists.infradead.org; Sat, 20 Jul 2019 08:00:15 +0000
Received: by mail-pf1-x443.google.com with SMTP id r1so15138914pfq.12
 for <linux-nvme@lists.infradead.org>; Sat, 20 Jul 2019 01:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=S1n5/5rkKojpxTQAcZHI91OsxlpkbmEKgjw090b1LMk=;
 b=ndUUm7AstrZClaG2kra0JK3O+81yqkiZqPG4LPUuMpmCWEq3luZkZyMyyWLoImK0u3
 x6C8WtoNX2gALxPiC6cJ7etATzfnlO+QYQxo8lqyOrOZINMA+IXBcSjrUEnipCs/Vz2O
 tXHiW9qVxgRQ+M9TVZMHBAVFLdYN/u5YlFGkkjGi8abxSLKyzwT3xrvu81V2ZZMw+eSY
 6ppjDHZC/epJwJ83s5O/Uepgm5yHN9CDgRQiUe6EbLppJyvxsLhRY6fq2ASNm1hkwpBi
 AvrZ4KoqTIjVyyQhzxXDlmZqiDv1ypKyLy+fR5G2LgUcJg49hXw0dwGFbGoa1UyEwBy7
 YVdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=S1n5/5rkKojpxTQAcZHI91OsxlpkbmEKgjw090b1LMk=;
 b=dt+zrJ1WB+aFFy6U66ngdhBDaiMp2qsAWDzeUQ94Bs6208Xx+uGtz+tJ5SeYqiven9
 beQK0lr+OxEsT96tuyuxEIiPiTzkCLGQgbmWA76Ko4HqNNdcYPfVv1uY1K/DUPM3A2xh
 KF0ODbwrFWP/pShae7hwowW5QOTp2lSyVO8RwqcUcPeMQYBDBrwlsaE2Jsy2Vv/4W+Qz
 4Q72q7ij1HuO3n93Ch0BIcqLtuQju16rhMe0nA/uYv3Pt2I5b/Kc+24S74jTN6kkguqq
 r1IUxZQq+R/yraiMIHcN3P2LLbc8e6aMKtxNn+5PBXkg5RV1hvyLBtCkYvWFFovvvDQc
 +liw==
X-Gm-Message-State: APjAAAWOQlmy98nXm3dM2x3/RDo7v0vvZBj+S9J342brexFErYiuuBVI
 a1sefK05sLSdrBYAHVAR89U=
X-Google-Smtp-Source: APXvYqzxyl2jBJ6wARpKidTSdOZO7yihBMDOonU6Iq3xBFdABL8kLlJUidx+gMr81ITdWsFyojy/PA==
X-Received: by 2002:a17:90a:bb8a:: with SMTP id
 v10mr63702608pjr.78.1563609613666; 
 Sat, 20 Jul 2019 01:00:13 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id o9sm7075737pgv.19.2019.07.20.01.00.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 20 Jul 2019 01:00:12 -0700 (PDT)
Date: Sat, 20 Jul 2019 17:00:10 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 3/4] nvme: don't pass cap to nvme_disable_ctrl
Message-ID: <20190720080010.GD22395@minwoo-desktop>
References: <20190719194546.24229-1-sagi@grimberg.me>
 <20190719194546.24229-4-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719194546.24229-4-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_010014_173576_50BDC9B3 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

On 19-07-19 12:45:45, Sagi Grimberg wrote:
> All seem to call it with ctrl->cap so no need to pass it
> at all.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

Looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
