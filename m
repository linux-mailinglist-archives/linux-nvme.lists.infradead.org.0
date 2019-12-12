Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3127A11C93F
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 10:36:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYH2e3mrwpxkVTZ1dQWhgujjpZJTi6znE0pwcwGmSVI=; b=tvHp0wrnGAFGWm
	yv1W24Sfrvw5mZUMrjXzDINLaAQxxHG3uC79XuWdXIKet5lv2LuuCa42VSPLcaOT0eQj00r9TlFMa
	eU90VGOxoYGwYTQ22jZcXzN1puHBG51jdyPxv0GQ5FJSjbDiYvRXvlFYQLv6Y74MuhHlCM8WPRw2J
	ognKXQmPOiAyHdmI6S58Caco/cx8rsXycWghJaAJ1wNHxJ6wFl2NiMZCLMbjuQ+foWyBtc4Mtvile
	IYxUNIcOkosvdGX4EEc5eAau2A2W5MeY0QSu55RwDh4srildf7vyM03cDrMglH74OmdgTdHRUwGZF
	m0B6Ybk6FveSrzmoV+ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKtE-0007ib-DJ; Thu, 12 Dec 2019 09:36:08 +0000
Received: from a27-56.smtp-out.us-west-2.amazonses.com ([54.240.27.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKt8-0007hq-BS
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 09:36:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1576143359;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type;
 bh=w0FazNewqkNs8YdPQjOHQnKwKkuu3mZLl8EwXAI4GQ4=;
 b=RQSTfU8d4Ad0YyhF4CzPAKMqOAu2JoOhtXxYTCnINOnaoyj4Fq9wYfU0sfRv5wTR
 OKJD7hK+3RpHhZUDbf92d4iV+V4i6J2VljNXCFwL4YXqNvyDzCZkK2+6T9whuurf4Py
 qytVrFj7jbVTKQ+FXXErDn2MwBCK0XohxcJTmKCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1576143359;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Feedback-ID;
 bh=w0FazNewqkNs8YdPQjOHQnKwKkuu3mZLl8EwXAI4GQ4=;
 b=CKVTQxpJZ/ow7NfglhD4Oy/czRhHWN6m9wDhQi9IS7pizNASu+8ewwKArk/igehz
 HZVCG3UmggmKoWeoww/UevzfmJwRx3ls33lI/58wvvLLXhN8l/jTQL2Uz9DNGieQRLD
 WCaouooFFGPs4Vuqjl7X1EZH1BrZJYuPNn3FyQTY=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2A814C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH v3 09/12] wireless: iwlegacy: use <linux/units.h> helpers
References: <1576075099-3441-1-git-send-email-akinobu.mita@gmail.com>
 <1576075099-3441-10-git-send-email-akinobu.mita@gmail.com>
Date: Thu, 12 Dec 2019 09:35:59 +0000
In-Reply-To: <1576075099-3441-10-git-send-email-akinobu.mita@gmail.com>
 (Akinobu Mita's message of "Wed, 11 Dec 2019 23:38:16 +0900")
Message-ID: <0101016ef9770e0d-33712f3a-9e19-4abf-9bc6-a84152d24922-000000@us-west-2.amazonses.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-SES-Outgoing: 2019.12.12-54.240.27.56
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_013602_416904_87BECF9B 
X-CRM114-Status: UNSURE (   6.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.56 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-hwmon@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 linux-pm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Akinobu Mita <akinobu.mita@gmail.com> writes:

> This switches the iwlegacy driver to use celsius_to_kelvin() and
> kelvin_to_celsius() in <linux/units.h>.
>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: Stanislaw Gruszka <sgruszka@redhat.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>

It's enough to say "iwlegacy: ", no need to have "wireless:" in the title.

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
