Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47572EA15
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 03:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=ExSjI74Jor7hRl9H8eUjxX6G5
	x7liNMayIWCCuClIJBFUsfhd1ZAJI2rIlcht1auhnAvUgbxoGgnIPRPreFyvW9IpPI1qr7AiZJhQh
	QOg11GOeCCG15/+KaxPpcqpAKUAy2dsB9+aYX60yyJghaVrCwQSURaKPy1kc3pwE/ItbLoRECLASd
	XsNP6zFgfE+uaNMp/Jub/LE/KXtfdI8auvw4d2NqAicdTisl4qe1YdQjDd/p7BRDXf5Qf+UcTBslJ
	sU8EF/Z5U6flWPZHZy0R8Plzx8gnEyQKO4pMwA3DKM8DnVQNb7jROVQtSdEGy89O6NN7BBZ2D80kk
	xhihWgGFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW9YB-0006f0-5J; Thu, 30 May 2019 01:08:11 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW9Y6-0006ei-18
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 01:08:07 +0000
Received: by mail-wr1-f67.google.com with SMTP id d9so3016335wrx.0
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 18:08:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=mMyyQe2bt0jKKsQrhRFCJfH1cMGnY+8S/H+eHt4sECTqm+OsyJtLsrr8yB6qcvROmL
 hSh0QUm9lPgASGJLlbZ+0uqlcwPIFbE083NPdaE4j0d29KVy3Qj3iTkTqLELjH4Tr7LK
 zIQ5vQ4Gc+BQ+oX8N3XV24QLo8Ls/la/WrjOm4qFkSN7pwsr6jPCBDArWV+te4IbhD+L
 FXYqxUr0cxbx5aBTcFNSscBZvEuTg5W9h5CkupPiWqFrnXEHK1YrOlheGx9gIX1w8BYD
 W15+r1/D87stUiRy+Wt6lk/Z8oLysU1JWcwKRYI8J78TfB9ikQqIo7GxgL8RIKXrleyh
 fNog==
X-Gm-Message-State: APjAAAUHIQL17QjfIXUelIpGCHTp+hgdJsjUJsMyhgs00Kg2/VhDavzt
 D7p9SWat9G8i3zqoK67LopX2ZMMu3to=
X-Google-Smtp-Source: APXvYqw3kOmKhl6O81atfnBm2qWHsdJh8r33oZpJE7eGlG9ULWzkq9XLMmPMoj6y3yqSnGOqC+9V4Q==
X-Received: by 2002:adf:ef83:: with SMTP id d3mr517546wro.253.1559178484340;
 Wed, 29 May 2019 18:08:04 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:d85c:2df7:72d9:ea63?
 ([2601:647:4800:973f:d85c:2df7:72d9:ea63])
 by smtp.gmail.com with ESMTPSA id r2sm747714wma.26.2019.05.29.18.08.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 18:08:03 -0700 (PDT)
Subject: Re: [PATCH v2] nvme-fc: Add message when creating new association
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190529222526.3672-1-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e759186f-66be-3041-c447-af1d9f3ad113@grimberg.me>
Date: Wed, 29 May 2019 18:08:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529222526.3672-1-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_180806_070421_8D8AC1C5 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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
