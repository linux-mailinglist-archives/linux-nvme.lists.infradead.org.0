Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A11A0176145
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Mar 2020 18:41:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=L/FVMTbrnvwKhhrWuoyUm6Iq/
	MRtUqyBn/HXjPkHqaUlfrUAxfLHznwkJzoGtSwFogSXY/+0rKsGA9Cvw+XIV+tCB9mXVdkCuYlk6N
	cC8YaNP453vnz78V4yPodeMh6CpebsBeZvt3ktpqM8dEgT4xkgJTzXmOlDlsoCpQFWIlOyejPmeOH
	U3EZCEcBnQs2fC8MnhHJUFc6X349C60w/9zxvPkoHkRRJT5ipo5wiXlabQaZA0FalesML0/QW/oqe
	pyctgu+TPM99jxpmOeQZVyhaZQKCzex54px1fBjP6+V6AIAnTpA6h+7ri5jJN3C3k1QW4jpAUvTll
	65Wtaz28A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8p49-0008Aj-Tp; Mon, 02 Mar 2020 17:41:17 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8p44-0007ze-CW
 for linux-nvme@lists.infradead.org; Mon, 02 Mar 2020 17:41:14 +0000
Received: by mail-oi1-f194.google.com with SMTP id t24so63580oij.3
 for <linux-nvme@lists.infradead.org>; Mon, 02 Mar 2020 09:41:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=V7c6/pOTd3aPuxTapLSsOACI71SZYhtemNP8Si0JEMumBIZF9qYtNfozRmCEtzJpLn
 cw+JU0Qcr/NGY2e8EVTx9VauYYlyhxb30M1IgwgvsRffxXxorMTP1kJc/oo51ixZXFrL
 lYYU/xG/hgiuKcgvFTCTVoYJj5uaA+Cv+HJ1+hF0n1nIG4j5Db2tR9K12wgRWCwsH+fn
 rGCExk1yJ3SwT6S4Vzn5vRJizGgWBJ9oiqFfsO10kWj6aaGJTzk7U12pekFtGKcjhwXA
 FPSoRKCXFUBSKVtiV3xvtaFc4NehQOjbseMoIAeQbveWsuZELNncw6gAy84HbBJCP9Ss
 JzbQ==
X-Gm-Message-State: ANhLgQ23dwopgvYZjwzEgAfKW/05kkP9oGUw+QXiOrTbpPwr39PezOW5
 6TnO+I2TQCGcnuIkSSB3yu+Iaw15
X-Google-Smtp-Source: ADFU+vsMDShb4qpFHB9W+wEJ6MdzdO6LRnS6Ugc7mwWkHk/Onj1cFEEKKfFTp6igJ9uU3wTprSLUfA==
X-Received: by 2002:aca:aa8b:: with SMTP id t133mr142935oie.95.1583170870295; 
 Mon, 02 Mar 2020 09:41:10 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id x69sm2793557oix.50.2020.03.02.09.41.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 09:41:09 -0800 (PST)
Subject: Re: [PATCH RESEND 1/2] nvmetcli: allow setting of the cntlid[min|max]
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20200109050448.5758-1-chaitanya.kulkarni@wdc.com>
 <20200109050448.5758-2-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <58a4194d-c557-0189-be05-91de5b018a23@grimberg.me>
Date: Mon, 2 Mar 2020 09:41:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200109050448.5758-2-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_094112_424102_5FF79E70 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
