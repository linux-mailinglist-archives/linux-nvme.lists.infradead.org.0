Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F278F67E41
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 10:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79XzWiQQrzfwBBlSdB6cugs+lzpRKePJFEyjeWl0RH8=; b=If6NVUl9tmKwXP
	OjzFNB+jTcsh1M2csQ0Y8kwt54XQBRZE7/0RG60ZuTXlayQKfcHUdEkkIxwe8Z9fVTZ6zgiHDGxcU
	zToOCW0a4sMbLfidW9NyseIUTp3KahkXcJjyIXVSeYrbDGg7QnECRILy9lKA0+K3f+rkZ+RIFMc6M
	f/XgXgZXILaROPFHYnpEXf5OMfJ8+1iaL5Ehzv9AHHiIS0Hq5KCv8aRB4HNPnLTEJAX1Vk7dM5tcO
	CGToKg8zKR/RGLAOurJNwqZOvsoiYvgqgd2v7qYJsHWAnqoGuOtewstZfPMZhJ0w6ISrB+NAF00ce
	QDkk4BP00mZ7/xf3oHrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmZZ9-0002Hm-Rn; Sun, 14 Jul 2019 08:09:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmZYs-0002Cw-UE
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 08:08:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id r7so6075636pfl.3
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 01:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=J9BOe8e9D9wSs03UFsMFOXh1ztj6MEyX6EAorNQKXuY=;
 b=CxL5ye9AOpViskOEU1qDK059wRrMGfflfRNSHPy+BmipCEobt3o/jNdQx3E6Z0OfHe
 OieeUoebQchO1ziXxA78yGZ6YCTtZYPc5zMJ2WMu+A5A3kQmR74wg7wyfcxaEsd6wp3m
 QuvLEEgIViGzm7UlRwCSrerj2IEJ3J1SnINvmzdS9M01ODwLR+wlefCZJOexe4M5YZcA
 H255VBNhHXzAd7K/wvOZLAB80HN4tFRBrRRvkxrDKbc7kXCaFIFCQfaZfngSL13nwtrQ
 S84Ye6U3gwMcQHdC+BwnOwz+xiV2hRAS5hiWdie3NmDliOcQgPX/PX+Eu11yNMsDlSy0
 NIyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=J9BOe8e9D9wSs03UFsMFOXh1ztj6MEyX6EAorNQKXuY=;
 b=B4YDFaRgK8ofD7Y0/Y6cYvrDZKNm6K1GxLshRGyz3391mB1vEzrI84TR8JxoXrVpT2
 DlHRvgi77CC/WTstR7kBluDbAIsjYsHscbDtT8sKoIPN1SM9K4Z/QFLdQKUf8airAvOx
 yi9J4irg47wpsSHQIImlLbb14xeUp0BTmA5tkhWkTejNESm8wVRyOu7HKnRMy2zxvs9S
 FVZnNKwnO3+g7FNZObrDiozXuhzTwn3Bmpj2Citg27TIVi9lG/AaalYqxJ2dQCncWhGO
 A19dmKt10PcEr2gPmBmaS5UcF4GehpbLWBn5GXkslPNUXBeOA/5ri7K0v9uKjzOPhHje
 nHpQ==
X-Gm-Message-State: APjAAAX3dqbdsSnsKRksYI4d7OH6bJJwixkJ5d1xy1j+BAMVT9fpsSGv
 9CVfsRpTuu5sfHMnJfyJwbs=
X-Google-Smtp-Source: APXvYqwGU9CwxCeSqBmFYy1zQjN6KhcaUdLVZ5p6qqiefx67Q9UK0yJLBRlHSIc2elX383kLbUtm/w==
X-Received: by 2002:a17:90a:fa07:: with SMTP id
 cm7mr22699365pjb.115.1563091726084; 
 Sun, 14 Jul 2019 01:08:46 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id w12sm12259703pgp.56.2019.07.14.01.08.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jul 2019 01:08:45 -0700 (PDT)
Date: Sun, 14 Jul 2019 17:08:43 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 1/3] nvme-fabrics: allow discovery subsystems accept a
 kato
Message-ID: <20190714080843.GB2993@minwoo-desktop>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-2-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712180211.26333-2-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_010847_326462_21E271B1 
X-CRM114-Status: GOOD (  10.38  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-12 11:02:09, Sagi Grimberg wrote:
> This modifies the behavior of discovery subsystems to accept
> a kato as a preparation to support discovery log change
> events. This also means that now every discovery controller
> will have a default kato value, and for non-persistent connections
> the host needs to pass in a zero kato value (keep_alive_tmo=0).
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
