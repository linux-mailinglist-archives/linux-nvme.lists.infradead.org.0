Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2356397A
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 18:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=MRRLjq0C03DyjtWTXtlmXkiy9
	mQ5jaUlsFsYBks0R67F5KTxIMW3ObpWXrZu/dp4inU8vyJE4J1zfhjqT5jcnpby+/chpaFn5g/k/u
	kCfUWE/53dvFjTIr9xSDCRxwxudemlFE1dKNXTVOG9wZsDBsY9LoxXRMi5+sHHL61ZQNhkdCA1XF6
	jOajutFi2B28rNhYgAnxyzZRLxqAygu/U7wrstWSRP5LLlAGgpAwirkhQ8edr9tQtZyei9b905av8
	Zs15cePNz71rHp2jCibINlBxIAGFQzNDoC3fZiT6kZBmyqmZ/aLk+8kgoE/tSdpqHHnAT4jEVbgrv
	oP6WfIJIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkt7e-0002Im-RR; Tue, 09 Jul 2019 16:37:42 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkt7Y-0002II-4V
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 16:37:37 +0000
Received: by mail-oi1-f171.google.com with SMTP id m202so15852250oig.6
 for <linux-nvme@lists.infradead.org>; Tue, 09 Jul 2019 09:37:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=IymTx8FpePEmnRu8xnyJMRxpcC5muDSiBBfmy/ozBkw5Z42XC0X5mrTzRt6nhEVfqB
 yOgx6/lBOZ0SxoRQjBgVhCSIGBKkfMc3/fu6yyCG8lUCbsTdBiaRiIk/kGgXr5qRGsaG
 pzBl4+u+xECc8l8O+k+aSnVgYxWPQXlPDNr55Y9Ad3uGV/vI9mtgB5yzGNOLmPIeqN0F
 5wf9NtAlmByWVwURiWLoQyDkfqpsSW6o1W6PJNtzuNKqaxXpjyTWPwHQW0c/DWCpk/mu
 kAIV0Qjn4NEkVtLZzM+ztvsqRUuTcn1E2mH6xm3KreP+lkbC7j+bvhMM4ngMAC6yYSbx
 lRXQ==
X-Gm-Message-State: APjAAAVNSyaf+6aXgAtVgZX+3yqrj/5gGSQE6eOaZrWkA6Vq++us4Dh+
 UgpIvpahwn+BYHs/CFOIc+Q=
X-Google-Smtp-Source: APXvYqw22QsSMuIYSCidrUt+A9DeTOkC9LGxDH+dBanSaVZIlruzml3agZc8bPtQ2La4x+wg5NkkDA==
X-Received: by 2002:aca:f40a:: with SMTP id s10mr562010oih.51.1562690255164;
 Tue, 09 Jul 2019 09:37:35 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id r9sm7499966otc.26.2019.07.09.09.37.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 09:37:34 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] nvme-tcp: don't use sendpage for SLAB pages
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
References: <cover.1562586804.git.mskorzhinskiy@solarflare.com>
 <3206ec8102d4dae933f4638652e84349dcc50ee4.1562586804.git.mskorzhinskiy@solarflare.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2b2b9f09-5a02-68c8-722d-5e361ce292ed@grimberg.me>
Date: Tue, 9 Jul 2019 09:37:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <3206ec8102d4dae933f4638652e84349dcc50ee4.1562586804.git.mskorzhinskiy@solarflare.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_093736_177603_31DFC8F9 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
