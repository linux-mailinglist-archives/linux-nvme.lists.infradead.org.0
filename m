Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C039917411E
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Feb 2020 21:38:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dNcfIck/bWMtf7ykGAKi6Uk02BofGRLwA5f09LHO84U=; b=syxylwDdaZ/ChKR09tnsK+QFW
	it2GcZZmYlCkff6G+oD0rXLa/bVgBJB6LjAHyWjRGbAixgn2/QdKjiGnDq3rj0yIYGl/rmeyhxJoi
	etDG+7ScmxwgFiuXW4dW+/R8q5KjbLI8pQTSeUjwi8flhCw2SrHkDx8Ql2c+TfCnV0daj7L7llESN
	NWdYnydYkf4sknnYCLzY2E23OThaJHf3VUw58FHIVfmzyOUphd6p4NfJsXN7eANL7p9Axrqf1G8ox
	wviOHDq3jiCwANYxHrAJ1yaStg7/YcYVeQUohVY/Aq5nttrR6U8YnBH3PTEWp9WrvzEHUCHOghZJ6
	UaFMyyrEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7mOy-0002MM-NJ; Fri, 28 Feb 2020 20:38:28 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7mOu-0002Lq-Ie
 for linux-nvme@lists.infradead.org; Fri, 28 Feb 2020 20:38:25 +0000
Received: by mail-pg1-f194.google.com with SMTP id a14so2072742pgb.11
 for <linux-nvme@lists.infradead.org>; Fri, 28 Feb 2020 12:38:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NGnTlNolJ6/LWVwmRRLnrmfk3z9g4zdLyxrj1NvmT0M=;
 b=VUlg7kdsTdJPLLMX+itJ/Uw1jrBCTDNInZue7QUGM8MRdHp4spO00HrNHGH2dv6Eqo
 WUCY15BYM172StqvG3ULxM4LRFwDJkeYXk2V+/v/YpQ2PFND8UcYTFzKVdo9XBRmF2t3
 Hi/LINtz6bpz/1CO9OqgJS+sXrUn0y1XOPozU/m54zlH4gFamoKr+4f3uWEBnkfiSaY+
 f2L6O7ulKVzQeLGcHnoc88dgMhYxeAqEp8IoCEeorQqf55fbaKGmdXqPNuP/oadNJF07
 DWp2qvnu/MDi7MUONsEJCiI2o8oBl5e3Wj286yTPUzOL8AtJoLOujVEfhpNlkZAwIqiY
 j+yA==
X-Gm-Message-State: APjAAAVu7GBRebLNa4teBHvy/fIVFRaF9dFHsOP58fHYfAK6arazouiy
 Z4VVryoq8jSVaq4dfolAS1Y=
X-Google-Smtp-Source: APXvYqwBlXHDCcSLizgnu3GiEukwPZb8y8uy68E/zZyvPmOICO2FzlwGADA5vZa1Q/SiElAe0b4jow==
X-Received: by 2002:a63:3d0a:: with SMTP id k10mr6138333pga.233.1582922301403; 
 Fri, 28 Feb 2020 12:38:21 -0800 (PST)
Received: from ?IPv6:2601:647:4802:9070:d1b8:1f12:d98f:3f23?
 ([2601:647:4802:9070:d1b8:1f12:d98f:3f23])
 by smtp.gmail.com with ESMTPSA id i3sm12225771pfg.94.2020.02.28.12.38.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 12:38:20 -0800 (PST)
Subject: Re: [PATCH 03/29] nvme-fc and nvmet-fc: revise LLDD api for LS
 reception and LS request
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20200205183753.25959-1-jsmart2021@gmail.com>
 <20200205183753.25959-4-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <af107905-e292-5419-e876-c35ab0822db4@grimberg.me>
Date: Fri, 28 Feb 2020 12:38:19 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200205183753.25959-4-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_123824_614817_940565D6 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: martin.petersen@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Can we have one of the FC guys have a look into this?

I'm not familiar with the details, and it'd be useful
to have a second set of eyes on this.

This is general for the whole series.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
