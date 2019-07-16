Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9CC6B16F
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 00:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=WydNdJmgU2Z2/QSJ2WSG/e8ZT
	mTJ4tT6FCZ2yNpHFo8j3eHYDio8sLT4Pjt2b9wI5+ZS4H/N53LbzXtcoiE5HpkTkO+QnHDZAgXely
	OakgGqET5zv5t/g5kSgWJictSWMgqlrYE/efn6MKBWhqleps4l76U4ZNiSZ8OfmZK0d3kfcMwf3Qo
	TaH9ZoPwa0k01WVQaB49V/Zq7JT8yfMXnu/79jtCYIqASwhZadjs3V5xBSZT5FZ1KtLZqPsHrkiee
	m+2fVDrknA9eI0EbfShxcYZeZ80O8wWBPt5xvzfQlKIhfyGWNVfyJTnmUpEq36Zo4OhimS1QZP+cq
	ydz9Aq6Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnVUF-0006KW-NG; Tue, 16 Jul 2019 21:59:51 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnVU9-0006D2-0V
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 21:59:46 +0000
Received: by mail-oi1-f173.google.com with SMTP id u15so16890432oiv.0
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jul 2019 14:59:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=SP6pzmVtNkSw20/v2XyL13eeAVCrnTrWFyiP64U60tyWw5FxdHQeL/9OzTQD+avmR0
 h1BAXRg6RJIZrEPCbH7BCBlDXgXzqk+eIRykNxQFbVIGF3IGSnLPchKv4aQ30tPAqqG8
 hubyemaX82oGEwscai/hVOyrsI5KGTEdM1KGaLgWgwItJ8FSCSWS/aN2uSxg+lCKQGMo
 u1OXLbAEJ4qjXCEjQbz9vQVTD+zTg04s5OqV3i1fUzaQYSIbq5jE7yZ4naY0A2WXsU9q
 mU1t2UzrCezUcQJTMhVZiYStaLuW7770DaE4i3xK6Yal8w8NC3TQ2FKARa35Vnnj+H0q
 yo1g==
X-Gm-Message-State: APjAAAWYsp+GaG3Nsru4tiNk51IGkQsMRURUHcrrIC7K2QHDi/2k9h/K
 yE2awsI/zJFjt+TFJ33Edy3gSHTZ
X-Google-Smtp-Source: APXvYqzSINrEkDunaNTVvRHu/q3CFbgPd1sjaBJ8ByjNUeByCS8NRWJoDVuXkmlU2BtMxGbgN6kbNA==
X-Received: by 2002:aca:c795:: with SMTP id x143mr17197397oif.50.1563314373155; 
 Tue, 16 Jul 2019 14:59:33 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id r67sm7614501oie.35.2019.07.16.14.59.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 14:59:32 -0700 (PDT)
Subject: Re: [PATCH 01/10] nvme-cli: ignore arguments that pass in "none"
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190716211241.7650-1-jsmart2021@gmail.com>
 <20190716211241.7650-2-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6bbe45df-0566-1751-80ba-93a04941deb5@grimberg.me>
Date: Tue, 16 Jul 2019 14:59:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716211241.7650-2-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_145945_060649_8456841D 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.173 listed in list.dnswl.org]
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

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
