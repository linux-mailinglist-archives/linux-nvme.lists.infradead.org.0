Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78354148D1A
	for <lists+linux-nvme@lfdr.de>; Fri, 24 Jan 2020 18:40:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qAHBxXIKnA5sHxjlrnkr5d1r7FcIvFaJaitaonju2mg=; b=txvjUJTE45fX58vEWiKQh6bOh
	xsW+Ws6tOXB0o7pVDaNJ4pPqxGaqTlbQdD9AshIc2hxEWLNYqC7vHs3OGwROeVzLBSeKNGLZaP32e
	tswjeVhjTU90481f4h8LK5EmHdQ9HxhEalbjjteRDdm+arlcfGPiNF0p1eUESpHoSWrom1H8UmNlu
	OIiCWgQaGloiI1RKYAoMGss4gOouINNUPsGq0dr8mmNcslLxRnRAO9zyvKrS/fQpiJmzxOJsxHrQ5
	H2rDpAx3kcOKws/NMK4DnpKp1stFJbm2xkBk5O24gF3QByGo2vp9QarS2zqrrT5N0AilMrfZ1yjDn
	dex1qfc7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv2ww-0005zi-IW; Fri, 24 Jan 2020 17:40:54 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv2wr-0005yv-AG
 for linux-nvme@lists.infradead.org; Fri, 24 Jan 2020 17:40:50 +0000
Received: by mail-ot1-f52.google.com with SMTP id r27so2382005otc.8
 for <linux-nvme@lists.infradead.org>; Fri, 24 Jan 2020 09:40:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=N4jRqK1+9dPOlRNH2JhaNdD+ha0xmvLZR9BHNFve5O8=;
 b=AD6/vdiocY8iqbz6+iMQYXy8NUgzbrFIEFJ5/NdEY7ki90nuYSFr78fogXGbffvz11
 9x4QgXU+2w3py1OX3lagCHgIc2dhX9k9/+aNouKaBpUWM54TqIXFkaoAcPp9jbWSi2ah
 rbKdBBcSfnzLT6N1X7C+AmWaMgafkwpdBZMf7oimew1Y0vYqVpuMB03mN+/6uObV0PJA
 BPCjz5KCdAmIRH3fEIAPRk208nZOawKc0nc/Tg67374VdLuBnDng7zJuyCXDfuhaosMr
 JBfESEjd0Qgf2TletIDPM4cEe8Z61DX9tTf+tuPgAUvCtjZzfzhY17XdiGWOiERC/LcG
 oe4Q==
X-Gm-Message-State: APjAAAXIpL+nKDnEzNKi3f9g5fHUTS8nJ7DS62g98BWOoTr/DSVfp6F/
 2cjQqLBaBLhgnb2+uYZ/EHc=
X-Google-Smtp-Source: APXvYqzFM7mmH8KjBbGZ4G3NK1JU0k8h6HgmjSFfOtAsqexqGodxtpf2vzEVOyk3aGHd+1z2a8D37g==
X-Received: by 2002:a9d:6ac1:: with SMTP id m1mr3504749otq.101.1579887647729; 
 Fri, 24 Jan 2020 09:40:47 -0800 (PST)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id e65sm2186382otb.62.2020.01.24.09.40.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Jan 2020 09:40:46 -0800 (PST)
Subject: Re: nvme blk_update_request IO error observed on formatting device
 with kernels 5.5-rc1 and above.
To: Dakshaja Uppalapati <dakshaja@chelsio.com>,
 Eduard Hasenleithner <eduard@hasenleithner.at>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "kbusch@kernel.org" <kbusch@kernel.org>
References: <CH2PR12MB40053A64681EFA3E6F63FDFBDD2A0@CH2PR12MB4005.namprd12.prod.outlook.com>
 <0b33acdb-2b8c-2a06-3c6d-b978f9a760ad@hasenleithner.at>
 <00d16b98-fcd1-2439-b50f-ccc992bbf871@grimberg.me>
 <CH2PR12MB40050ACF2C0DC7439355ED3FDD270@CH2PR12MB4005.namprd12.prod.outlook.com>
 <CH2PR12MB40059BF12ADD50A121B755E7DD0E0@CH2PR12MB4005.namprd12.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c20beed1-81ce-6e61-6f6b-4e865dcbfbf9@grimberg.me>
Date: Fri, 24 Jan 2020 09:40:36 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CH2PR12MB40059BF12ADD50A121B755E7DD0E0@CH2PR12MB4005.namprd12.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_094049_352636_77750903 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.52 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Potnuri Bharat Teja <bharat@chelsio.com>,
 Nirranjan Kirubaharan <nirranjan@chelsio.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Hi Sagi,
> 
> Can you please push the patch.

Yes, sent a patch, thanks for the reminer

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
