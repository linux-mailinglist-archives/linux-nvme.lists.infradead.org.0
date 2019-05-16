Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C3B20888
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 15:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBHydANr03uJoFGcNKIlJo9xS0L67aWdnnb3n/S3PUg=; b=WpsxMlM/rW/FQy
	p0q6gMWUyFdz3eBIrQhuIwwSoI98ls55op+zEKsIG8BhNchQHk5F597Hoo8sOWd9XnfaLXArC045v
	t717v5KSKJGMzuUtNAVzQDM1eivjFruP5mGob/wK0GS+8jNl/5yYL7gUrOCW1RdosULZTu3707zLi
	REGMA5nmg9pKKGKOAW6Pxt/6h8aaBvdlJ62oEmMEFGFsGqL/QZIM9RVjnQfqkXQ1IcpVizOmt1X1C
	7z+gLvxsBG+AOA6ygFDOD3VI3uB6LiHjkdJ5XcoCVmbDIFLRT5FJ7BAKRylJbY52z6s1ge8oqKMEW
	3cEnTwSDZZI5YehLoGWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGjc-0001p7-0c; Thu, 16 May 2019 13:47:48 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGjX-0001on-Bb
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 13:47:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id q17so1883148pfq.8
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 06:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0X4DuzVUp5oZUyO0PmyAsKowZugqsOnwketZX4i/LWA=;
 b=PjviKCqjQcGL8q9QmFCWWkgqPiLa/QJBSFd9xL/scfEMxOCTRhLvFCx6cxW7XQYsl3
 pqTh0LA8Ek/CBqSTeOKrb/Y+TXpVcJZLsUbkOSKxIX0NDyKdnS45NT0ISGZyRqCB1oiB
 jhW8R8b5gSG8r0Xw87GB1MMxcDSvLFUWWovmcjDqoP9dtiWMQPNZPrtIdmZ7HCJoQ+gK
 bVCAT3tqTCINn8bqBYQoe6dFi0+BdbYx2Ljf9kQofqyVbbeQ/wlCnBMuKgl0BaibAIuW
 XNyM0Kwu2a4KLvHi70WmAvY/E3pNts9Z58MMi2Vl6hManWpfR2mQHU0JHyK/lFV5QJ8g
 lRGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0X4DuzVUp5oZUyO0PmyAsKowZugqsOnwketZX4i/LWA=;
 b=hJn5kotwsYnBGWcNY3EXmWvT0UouUs2nXjSz/9ffbn5L2DiYnF0n/04NPEH9n4er1d
 y+c5CeYBdfIejnq74PXrWD9R5BeTqNGZbB9md33sf8vSpYjC2T31hylA6/BmzSV28lT/
 jaLZ2bBNPrVFyAhCqwSvoS6KwkBUbNfVyOE7YXMV0+PmtOfeyoFvMcqx3DbRnIOrVauH
 pp7sPmhq7QFkCAWZCHE8WByOg4VkUbdxfWOrsSf+3nLuAJJEFM9cAlYGMafSlVw3DPPt
 5UqPMdc+PUv8os3VTDucHtHtSZ/cFZhQdwnyaNMivJEXneo1CU/1VzFv8/D8rVwTQdzZ
 dG5g==
X-Gm-Message-State: APjAAAV00WuqCucqxG2CWN8fGi516cXTbw4IY0/OoP8eXmKOuQu0B0RP
 bsjqE/ymFCNigj7Ml+6nW5I=
X-Google-Smtp-Source: APXvYqxFxSkF7jkbrGPeIC18LLW8pW0AwFO93h1EM2BkgMR8uGLf8LDkYAbytWpAwfY+RRyRNTKvmA==
X-Received: by 2002:a63:e451:: with SMTP id i17mr50697318pgk.312.1558014462038; 
 Thu, 16 May 2019 06:47:42 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i22sm6593170pfa.127.2019.05.16.06.47.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 06:47:41 -0700 (PDT)
Date: Thu, 16 May 2019 22:47:39 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 5/6] nvme: Export get and set features
Message-ID: <20190516134737.GB24001@minwooim-desktop>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-5-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515163625.21776-5-keith.busch@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_064743_393958_BF459269 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

This looks good to me.  Also fine with what Christoph has mentioned.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
