Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBA6B96CD
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 19:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7GvDS5HplhRESJD7CbhR7OHCJehLJN93k97eEbMCcX8=; b=ZwfRKFIzOgYLsSol95FZ86OAa
	8yqvWzjhzCn6xglOUVZBIXUJ/49l6TCxmxul4P8yfY+NKJtGWXfuWp29oefvntlP2abHU/VzTzIuh
	hjR80aXzmZWOwwZeHpYyeFy9Oc1usPC0+zgVWEg2WEUcfCnYE25WWQW3kvoMScTDajf4k5rxmy4po
	CWV8gjr8Jm+axa1CRTXfZx9Cp7zgPyd6I6vbgOUZHw0EXlrWj8O1I/UuoU+vJ7n/W8bgcJ0SAq4VW
	lt6spcMSMQ8UCX4AmePGFVOZ9Hw5xWctiAufPWJ2U5vn/jm/gkJR6imnoRTZQ4OE/WbY0RWFFJyhM
	t1SluKwYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBN5q-0005ZY-MK; Fri, 20 Sep 2019 17:53:18 +0000
Received: from mail-wr1-f48.google.com ([209.85.221.48])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBN5m-0005Z6-Bs
 for linux-nvme@lists.infradead.org; Fri, 20 Sep 2019 17:53:15 +0000
Received: by mail-wr1-f48.google.com with SMTP id q17so7631357wrx.10
 for <linux-nvme@lists.infradead.org>; Fri, 20 Sep 2019 10:53:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=12AZZedWH6nMSxAx+6ASndeh1Ztb0Fq/rG8ZzP1jJTo=;
 b=fkdmsV8CwOas6ZRRs0sO9hTkpgjdHCGkWkPXU13FBEB+ZtJFaz1WqKndsjGzPTvkon
 +pkTqZUFrqVkNMp5n9NphIUcWQKDwkFni9u7758PxROKzzh836C03FDeyyjBqzulJTwu
 arSB3ZWtfMqVlWWPfMHxrsiM//sHwSpN8N2qZjG1Ci5VJxPAvdBO2GVwRDxKjf3nHNYj
 ojqbNQGHf8Iwce8+XTQxRrtAVviuQl037Uh56rsqDTPF54hm0KEOcHyvSjDJR6F/rZuL
 pcD7PTRQ8fHogEf9z0kqK35C55GS9PTY+OsYv8CeIb0Le3wjsjaz5pUuJeSIo+c64kBx
 Qr7Q==
X-Gm-Message-State: APjAAAVfICbe19wxAs51x0eOg90eIdME1pcVE3DlxgwqB4+8qTn60dwK
 36R6t7FJhEoVoXQt25qRYnU=
X-Google-Smtp-Source: APXvYqwWMRRMzoIgEq7uQpuJdqbYiXAOd1bV6WFzU/K1LdDbEZU71kioY0WgoScLhsdFe6vU/tficg==
X-Received: by 2002:adf:e591:: with SMTP id l17mr13335277wrm.199.1569001991635; 
 Fri, 20 Sep 2019 10:53:11 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id y3sm13288949wmg.2.2019.09.20.10.53.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 10:53:11 -0700 (PDT)
Subject: Re: [PATCHv2 2/6] nvme: Remove ADMIN_ONLY state
To: kbusch@kernel.org, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-3-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c2f77186-472b-b615-eeca-4dcc558277f7@grimberg.me>
Date: Fri, 20 Sep 2019 10:53:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190919213431.7864-3-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_105314_407150_FA9ACE4D 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.48 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.48 listed in wl.mailspike.net]
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks fine to me,

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
