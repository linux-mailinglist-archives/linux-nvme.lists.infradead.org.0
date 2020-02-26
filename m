Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D8E170C47
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Feb 2020 00:07:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UkVQXR7Hq+hX+xMo0iLbGHUk79CBUwt0MzZDKyUxNOo=; b=rY0DwQQlAAEvsgm6rWRy4XRDB
	KYe2n/Apk1eXMrEBXui41+ltmtqcC9lDvQYHAK9fKWIAEg0nIE9kuO4gW/y/+LFJn48pLcopv9CYw
	Vshfpy4LWQPBB/m9DjuJj/wtYB8Df2cz+bcDvRt8B7CkSO3KDAR2fAEqXT6JKXjX17DC+BHwfKmEa
	/9n1YwneJWifcSBkaEqli6EN2nR6WYl4xz3l7/GqxCyID9HaLF05X6ZMyiF3k0GMiI+/jSIzTX6rV
	f0Ft+WyFicQ61mjgDlZfwfDp2BKIYDeonIyS8wvC6VGf3zwdqmvqKcqshAU5ETnqcR/UEAKDvLCgg
	NPamrZBqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j75lk-0006HS-U2; Wed, 26 Feb 2020 23:07:08 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j75le-0006Gz-Kg
 for linux-nvme@lists.infradead.org; Wed, 26 Feb 2020 23:07:03 +0000
Received: by mail-ot1-f68.google.com with SMTP id 59so1083730otp.12
 for <linux-nvme@lists.infradead.org>; Wed, 26 Feb 2020 15:07:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LRdjIc+vGnUmRtRoX7ycxcPF4mb8/NpUTfjthBi+6FQ=;
 b=N9BZs5Lg01Ss3uHa3lzOsLnUjvxfXYm4YBhUrqAQffVXiGpGsDSs5faHiE9ii6grg9
 nzMbLBJCZR0U+Vai9B1W4sMDVbD7daabjX1Os6Pf+uW1vhIczjoxRRjACeDo73soYqNJ
 Z4yi+48q7cMipPOsOwnM8CujVHLKxdVY7x1sBX07/PYf8l7eDU1gbOVGu7CxjaP2i9GH
 ZPXIuTxFBJYl4tDEF8sEvrszrblkq7bY50MJ1gyjNhmvkc4wgL5xqPLi+nY+pfglv040
 AxKKVCe4TGS+gZkhLHWdZya18rsQ5eFutrHhhLKnSaZILzf99386oKjaeb6F9QszOFNZ
 jIcQ==
X-Gm-Message-State: APjAAAWp541rZIiDbrE/2RISEQvejCUZhhv2sITcKjjbnBVKz9i2Rvy1
 6fMSNHAFr/DWOwbHgUn5pUhvgRX7
X-Google-Smtp-Source: APXvYqwlsXhvrLFYS3oU2H4OeCqmGcW42ALGxi8MtWuNee5/9kWaPU9ns9AFKPg9J3Z4jWT1fmSp2Q==
X-Received: by 2002:a9d:7757:: with SMTP id t23mr992994otl.315.1582758421576; 
 Wed, 26 Feb 2020 15:07:01 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 5sm1299274otr.13.2020.02.26.15.07.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Feb 2020 15:07:00 -0800 (PST)
Subject: Re: [PATCH 1/1] nvme-pci: Hold cq_poll_lock while completing CQEs
To: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>,
 linux-nvme@lists.infradead.org
References: <1582753762-47774-1-git-send-email-bijan.mottahedeh@oracle.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f85ab885-0837-633f-51eb-028dcf451486@grimberg.me>
Date: Wed, 26 Feb 2020 15:06:59 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1582753762-47774-1-git-send-email-bijan.mottahedeh@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_150702_676707_94D64BF6 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This needs a Fixes tag, and should probably also be
picked up for stable. Other than that, looks fine,

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
