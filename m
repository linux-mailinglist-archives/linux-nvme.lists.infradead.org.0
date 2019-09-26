Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15442BFA5C
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Sep 2019 22:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SLUxEjstswUBYpV1USOlm68nauBsI8Xl0DyVnNSbw4k=; b=HOqJ2WsGCCfvE2Zb2PTgjHvZO
	dQt/H4g100wzU81qmB9Lb7GbVF2UEHOOWFYTa7gc/KDudnKKIkjJg4oNXb2U7QQoiOs/MCZRtxPVY
	vJps0m+zuR7IM6djRjWIjdI9s7TDCCfx0le5j0BQqc8yiK+PlGwqtoqtqeo03+dK5RrOoKyuTOcyp
	Nz2M9McZ2GOsmrii+pogCFJHuv+0y3Q6F8ZELDmvoYRBf6GYS5qcBz25p2ogjoivFkkR78OmtERJT
	WSEEinYQD0mr9fRtQzeqH0FrN770yVy7kFeJWk1rMmFJ/wExPyn62182VsQsUe+l7weuMmh3js68p
	VjffIhpPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZxM-0005bB-Pp; Thu, 26 Sep 2019 20:01:40 +0000
Received: from mail-ot1-f43.google.com ([209.85.210.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZxA-0005ap-SP
 for linux-nvme@lists.infradead.org; Thu, 26 Sep 2019 20:01:30 +0000
Received: by mail-ot1-f43.google.com with SMTP id e11so250715otl.5
 for <linux-nvme@lists.infradead.org>; Thu, 26 Sep 2019 13:01:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=n9/mVvbc+FJD5lFAC39ToEnsu4tlFlkzdP2wms0HhJ0=;
 b=n4LRA5iSGaEfiMhEqDYMShgwVfpAzgA731KJovUj4612IsEU3ZeJ9XnNi/cG/Z/P0+
 6St/+89V+Jgxxc/kU27uUX0bYqsc9AEtn9MWkTLu1JWTgHQ8fe4cOCHyA6+gmaIY1ADc
 Bvz4Ag+uiTFpq+UgQvhTJlehrtp/BdhHZygK2+XK8ZYgc8Sk3E/orQXGq9Hu8EnLOjWd
 Gbn2CjY3rSzu04OdmSL2jYpSXx/dUNovnT3b0VtHomAOj3f7kLRUBydcIuv5Ic6iAsU0
 5omCCEpJUjFfNZ3yf7E7wjRqdP1iPahgbTJhEBoAA11ny8fH4CAFL7+ru0Jh/WM+4lVr
 8G+w==
X-Gm-Message-State: APjAAAWB45bmVlpkb2Ys810HCvBVMwkw1oSEOxpeKbfzC5aKm9IgPjfu
 gGvGlxMwdE1rLTIiGinszLLsRPfV
X-Google-Smtp-Source: APXvYqzzmzeYS2xiBT5mh+9z8O+w5aiKjsNGiB/TI34XgaeptNQZjN4SH9ZKbaB29yF3iXM7/QJ6oQ==
X-Received: by 2002:a9d:3b26:: with SMTP id z35mr359204otb.182.1569528085811; 
 Thu, 26 Sep 2019 13:01:25 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id i4sm105104oto.43.2019.09.26.13.01.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Sep 2019 13:01:24 -0700 (PDT)
Subject: Re: [PATCH][REPOST] nvme: Add ctrl attributes for queue_count and
 sqsize
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190926194422.19077-1-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f60759a8-dad6-4892-75d5-cdd449c00d41@grimberg.me>
Date: Thu, 26 Sep 2019 13:01:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926194422.19077-1-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_130128_926461_880305C9 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.43 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.43 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Applied to nvme-5.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
