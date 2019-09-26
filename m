Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C167BFA5E
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Sep 2019 22:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SLUxEjstswUBYpV1USOlm68nauBsI8Xl0DyVnNSbw4k=; b=sO9UQA1H+aPPcZE/zOjgEpwGn
	4TTAaflxefNHkw0Rzw6vPX3wqY3GSTuDEE9eyYURkMUGDvmxuz/3bmj/EOdCBoInJToJGrUECToxd
	di7SoFdCq2kbn9uE/wtLQnaqqw3aNLgG9rwP/A9FrKZ0gIAckpmsNzk8Hb0hpiSBtqS2fHhW9aDZk
	1bRIbdLqf6YCr/aiEg/2IQohFJg3bCQ7l8sYZsjPzuMrBiiS5ISsVLaOFvNLeNyTPa67uR9OdDmPR
	QFh16IuVlR5WlsdcWJFqCzCOCSBsdjco4Q7Gms3ZixJGLyUvO8KkeV9gDFEcKRoXfgv2PeQaMTkkd
	vJ0P6fr0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZxg-0005ky-0s; Thu, 26 Sep 2019 20:02:00 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZxJ-0005f4-E3
 for linux-nvme@lists.infradead.org; Thu, 26 Sep 2019 20:01:41 +0000
Received: by mail-oi1-f193.google.com with SMTP id i16so3223345oie.4
 for <linux-nvme@lists.infradead.org>; Thu, 26 Sep 2019 13:01:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=n9/mVvbc+FJD5lFAC39ToEnsu4tlFlkzdP2wms0HhJ0=;
 b=oZLqpDoVnmFqEHevzYwpki6xpzm0mITD3Ts5pF34hseiBCHEPM4PYTSpB2u1rT9URs
 gnt+LzOr/xwmYpeOWFRtWV32kPhIB5yTIMZoSjAl85NT+TTjtpIfXb7y1V+YVn8v62ng
 ED9O4gN98lCP2/CpW8uGtcrfrFvjjDfKtzWFJTfMDnE4hyCTk2ek/5NTic4Hg7NQ1HPq
 JeWuUe440B0GDTRzTiivtWpPLKcppvz8U3RZnq/3YwyXJAFUyi5rjHpzSg4AWy8hWhH5
 IcjwO1+WCoZzdIcrXBUlZ8DQCCJGJtGBB8lYjKo4KZ/usVu+YDXoyRZL7EhexkUGuGkz
 sg5Q==
X-Gm-Message-State: APjAAAVyFDjcSzzNg5FNrLJ6i55nIX0fwlIKabKc5i6E+tmrlH2qeq/Q
 DDlo2BzlceFKcn3N+sEjdx/8aOWu
X-Google-Smtp-Source: APXvYqy8BQXddHVrqHOBn4eH6n0GG57df0bFcr1cagYjuhWPymPN1156w/k8BHf0B4L0fr93BX0u4w==
X-Received: by 2002:aca:33c6:: with SMTP id z189mr4086017oiz.137.1569528096037; 
 Thu, 26 Sep 2019 13:01:36 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id h32sm113442otb.46.2019.09.26.13.01.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Sep 2019 13:01:35 -0700 (PDT)
Subject: Re: [PATCH] nvme: Move ctrl sqsize to generic space
To: kbusch@kernel.org, linux-nvme@lists.infradead.org
References: <20190926034439.2542-1-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c223a470-b8f9-8c7a-c2a2-c2aced28c022@grimberg.me>
Date: Thu, 26 Sep 2019 13:01:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926034439.2542-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_130138_348658_0C3CD8AB 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
