Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD5D1B5728
	for <lists+linux-nvme@lfdr.de>; Thu, 23 Apr 2020 10:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TShqSxyqZMlsI2qibv9S72QRbxxSdJmyAnYG0eEGZ78=; b=OjNkgSKm8BaO/PgUZUtw3+dqg
	2yx0/H1ORQCUks1eSGbmdI8otxaoYPm+Ob6+yj2b8P1kNnLdzZfDuA7K4A8IyhYSrJqcG9tMwLypY
	jkNBBsxe4DN93XVLx0U57g/q4xOeRO25hPpriatSDbuDJ1nErGUcd8esV35JVOi5EDXaTus2v5n7n
	u3IYuu/um53kEwQiuHXL80vBUIy6VjuCZhb5GBlbEwRrhqHySAzkSYYFE8pYdBDy+GAukaGQ7Yl42
	wrEEL5HIZzW2fhR9Y6cPG+/l1UIn3B2JozoofgtzQ8FoGygLFtyWM3a3awtjk3wdVP53Fk+5kVjRL
	MjXqv13NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRX7w-0004zw-0i; Thu, 23 Apr 2020 08:22:32 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRX7r-0004zU-37
 for linux-nvme@lists.infradead.org; Thu, 23 Apr 2020 08:22:28 +0000
Received: by mail-pl1-f196.google.com with SMTP id d24so2068717pll.8
 for <linux-nvme@lists.infradead.org>; Thu, 23 Apr 2020 01:22:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=473AW66mVy+pUi3Y0dZE6gR/jEwyIoKjnj4RVAOR4pE=;
 b=jE+GS4o9b2saYkl/pTcaxmZko8h2oYOrvvJSn3QzgV7besyff96TVk9xABxABJqQSG
 Pk6oFZmLnvYqJqgdhjZpwfDhVPG35H2e3MKxKr0YxVMW5hVQe0MRUtunqPLukbjrwfxx
 YUEnXZfk04165CPdWbVKaYdaFXIAVby8HDPrG0ILQECWe2yabpNuTjz/xwct9dWCOdee
 RRmM1pagXmaxfYdPZRrfFYjUOwaQH8cXfaz5GSXdEOZSWW9Ryjq1MHO9HPbIL5X7DkdX
 7MSJlirBS/qsBoEfk4drVWkD1mOBxkJhCsR1gK/y2eAmyVD5quRRqBusxlfsPC/p1zOX
 KTCQ==
X-Gm-Message-State: AGi0PuY4nN1gQvCd3QON9pEO+fmLmrxAOyMEaPUh1eTpDHHYpTPULpFs
 0iFaTCi1ZNmSVyGR66+wG5iWIQ/4
X-Google-Smtp-Source: APiQypLYaJecr/QQhLRpmZ6ZbDXiJjLrAoZ+5RL+UyLOw0GPNm64RJ2+kMebIaIjuaCLgYxfj+DgFQ==
X-Received: by 2002:a17:902:7286:: with SMTP id
 d6mr2763332pll.241.1587630145461; 
 Thu, 23 Apr 2020 01:22:25 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:ec9f:3a3e:8aef:64e5?
 ([2601:647:4802:9070:ec9f:3a3e:8aef:64e5])
 by smtp.gmail.com with ESMTPSA id a13sm1819481pfo.96.2020.04.23.01.22.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 01:22:24 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] fabrics: allow traddr to be host name for ip based
 transports
From: Sagi Grimberg <sagi@grimberg.me>
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org
References: <20200401215344.2519-1-sagi@grimberg.me>
 <20200401215344.2519-2-sagi@grimberg.me>
Message-ID: <fd09956c-2b96-4b26-bb38-ebf00bf48156@grimberg.me>
Date: Thu, 23 Apr 2020 01:22:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200401215344.2519-2-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_012227_130870_FA75958D 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Any objections with this spin? Keith? Others?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
